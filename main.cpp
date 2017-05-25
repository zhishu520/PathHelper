#include <iostream>
#include "sqlite3/sqlite3.h"
#include "ArgvManager.h"
#include "DBManager.h"
#include "PathMark.h"

using namespace std;

void testDB(){
}

void registerAll()
{
    PathMark path;
    path.Register();

}

int main(int argc, char *argv[]) {
    registerAll();


    if(argc < 2) {
        vector<string> emptyParam;
        ArgvManager::getInstance()->doArg("all",emptyParam);
    }else{
        string arg = argv[1];
        vector<string> param;
        for(int i = 2;i < argc; i++){
            param.push_back(argv[i]);
        }

        ArgvManager::getInstance()->doArg(arg,param);
    }


    string arg = "go";
    vector<string> param;
    param.push_back("cc");
    ArgvManager::getInstance()->doArg(arg,param);


    return 0;
}
