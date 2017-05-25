//
// Created by 植建章 on 2017/5/23.
//

#ifndef PH_DBMANAGER_H
#define PH_DBMANAGER_H

#include <string>
#include <vector>
#include "../CppSQLite/CppSQLite3.h"

using namespace std;


class DBManager {

public:
    DBManager();
    ~DBManager();
    static DBManager* getInstance();
    string getPathMark(const string& name);
    void setPathMark(const string& name,const string& path);
    void delPathMark(const string& name);
    vector<string> allPathMark();
private:
    void _initDB();
    void _closeDB();
    void _checkDB();
    void _createDB();
    CppSQLite3DB db;
};


#endif //PH_DBMANAGER_H
