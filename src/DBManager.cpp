//
// Created by 植建章 on 2017/5/23.
//

#include "DBManager.h"
#include <iostream>

DBManager::DBManager()
{
    _initDB();
   _checkDB();
}

DBManager::~DBManager()
{
    _closeDB();
}


DBManager* DBManager::getInstance()
{
    static DBManager instance;
    return &instance;
}

string DBManager::getPathMark(const string& name)
{
    char str[256];
    memset(str,0,sizeof(str));
    sprintf(str,"SELECT path FROM path_table where name='%s';",name.c_str());

    CppSQLite3Query query = db.execQuery(str);
    while(!query.eof())
    {
        string result = query.getStringField(0);
        return result;
    }
    query.finalize();
    return "";
}

vector<string> DBManager::allPathMark()
{
    CppSQLite3Query query = db.execQuery("SELECT * FROM path_table");
    vector<string> rt;

    while(!query.eof())
    {
        string name = query.getStringField(0);
        string path = query.getStringField(1);
        rt.push_back(name);
        rt.push_back(path);
        query.nextRow();
    }
    query.finalize();
    return rt;
}

void DBManager::setPathMark(const string& name,const string& path)
{
    char str[256];
    memset(str,0,sizeof(str));
    sprintf(str,"replace into path_table (name,path) values('%s','%s');",name.c_str(),path.c_str());
    db.execDML(str);
}

void DBManager::delPathMark(const string& name)
{
    char str[256];
    memset(str,0,sizeof(str));
    sprintf(str,"delete from path_table where name = '%s';",name.c_str());
    db.execDML(str);
}


void DBManager::_createDB()
{
   string sql = "create table path_table("  \
                "name       CHAR(50)    PRIMARY KEY     NOT NULL," \
                "path       TEXT                        NOT NULL);" ;

   db.execDML(sql.c_str());
}

void DBManager::_checkDB()
{
    CppSQLite3Query query = db.execQuery("SELECT COUNT(*) FROM sqlite_master where type='table' and name='path_table'");
    while(!query.eof())
    {
        bool haveDB = query.getIntField(0);
        if(!haveDB)
            _createDB();
        query.nextRow();
    }
    query.finalize();
}

void DBManager::_initDB()
{
    db.open("/usr/local/bin/db/ph.db");
}

void DBManager::_closeDB()
{
    db.close();
}

