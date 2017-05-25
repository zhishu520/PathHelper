#include "ArgvManager.h"
#include "iostream"


ArgvManager* ArgvManager::getInstance()
{
    static ArgvManager instance;
    return &instance;
}


void ArgvManager::registerDescription(const string& arg, string desc)
{
    description.insert(make_pair(arg,desc));
}


void ArgvManager::registerCall(const string& arg, ArgvCallBack call)
{
    callbacks.insert(make_pair(arg,call));
}


const string& ArgvManager::getDescription(const string& arg)
{
    auto it = description.find(arg);
    if(it == description.end()){
        return emptyString;
    }else {
        return it->second;
    }
}

void ArgvManager::doArg(const string& arg,const vector<string>& param)
{
    auto it = callbacks.find(arg);
    if(it != callbacks.end()){
        auto call = it->second;
        call(param);
    }
}

ArgvManager::ArgvManager()
{
}

ArgvManager::~ArgvManager()
{
}

ArgvManager::ArgvManager( const ArgvManager &cpy )
{
}
