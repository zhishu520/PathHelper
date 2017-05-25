#include "PathMark.h"
#include <iostream>
#include "DBManager.h"
#include "ArgvManager.h"
#include <assert.h>
#include <iomanip>
#include <unistd.h>

PathMark::PathMark()
{
}

PathMark::~PathMark()
{
}

PathMark::PathMark( const PathMark &cpy )
{
}

void PathMark::SetPathMark(const vector<string>& param)
{

    if(param.size() < 2){
        assert(false);
    }


    string path = param[0];
    string name = param[1];

    if(name.find('/') != name.npos && path.find('/') == path.npos)
        swap(name,path);


    DBManager::getInstance()->setPathMark(name,path);
}

void PathMark::GetPathMark(const vector<string>& param)
{
    if(param.empty())
        assert(false);

    cout << DBManager::getInstance()->getPathMark(param[0]) << endl;
}

void PathMark::DelPathMark(const vector<string>& param)
{
    if(param.empty())
        assert(false);

    DBManager::getInstance()->delPathMark(param[0]);
}

void PathMark::AllPathMark(const vector<string>& param)
{
    auto vect = DBManager::getInstance()->allPathMark();
    int size = vect.size();
    int halfSize = size / 2;
    for (int i = 0; i < halfSize; ++i) {
        cout << std::left << setw(20) <<vect[2*i] << "\t\t\t" << vect[2*i+1] << endl;
    }
}

void PathMark::GoPathMark(const vector<string>& param)
{
    if(param.size() != 1)
        assert(false);
    auto path = DBManager::getInstance()->getPathMark(param[0]);
    chdir(path.c_str());
}

void PathMark::PathMarkHelper(const vector<string>& param)
{
    auto argvManager = ArgvManager::getInstance();
    cout << "===============  Author: ZhiShu  ===============" << endl;
    cout << "=============== Version: 0.0.0.1 ===============" << endl;
    cout << "get" << " " << argvManager->getDescription("get") << endl;
    cout << "set" << " " << argvManager->getDescription("set") << endl;
    cout << "all" << " " << argvManager->getDescription("all") << endl;
    cout << "del" << " " << argvManager->getDescription("del") << endl;
}

void PathMark::Register()
{
    ArgvManager::getInstance()->registerDescription("get","get 名称");
    ArgvManager::getInstance()->registerDescription("set","set 路径 名称");
    ArgvManager::getInstance()->registerDescription("all","显示所有的路径");
    ArgvManager::getInstance()->registerDescription("del","name 删除name路径");

    auto getCall = std::bind(&PathMark::GetPathMark,this,std::placeholders::_1);
    ArgvManager::getInstance()->registerCall("get",getCall);

    auto setCall = std::bind(&PathMark::SetPathMark,this,std::placeholders::_1);
    ArgvManager::getInstance()->registerCall("set",setCall);

    auto allCall = std::bind(&PathMark::AllPathMark,this,std::placeholders::_1);
    ArgvManager::getInstance()->registerCall("all",allCall);

    auto delCall = std::bind(&PathMark::DelPathMark,this,std::placeholders::_1);
    ArgvManager::getInstance()->registerCall("del", delCall);

    auto goCall = std::bind(&PathMark::GoPathMark,this,std::placeholders::_1);
    ArgvManager::getInstance()->registerCall("go", goCall);

    auto helpCall = std::bind(&PathMark::PathMarkHelper,this,std::placeholders::_1);
    ArgvManager::getInstance()->registerCall("help", helpCall);
}


