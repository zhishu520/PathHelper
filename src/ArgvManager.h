#ifndef __ArgvManager_h__
#define __ArgvManager_h__

#include <map>
#include <string>

using namespace std;

typedef function<void(const vector<string>&)> ArgvCallBack;

class ArgvManager
{
public:
    static ArgvManager* getInstance();
    ArgvManager();
    ~ArgvManager();
    ArgvManager( const ArgvManager &cpy );

    void registerCall(const string& arg,ArgvCallBack call);
    void registerDescription(const string& arg,string description);

    const string& getDescription(const string& arg);
    void doArg(const string& arg,const vector<string>& param);
private:
    map<string,string> description;
    map<string,ArgvCallBack> callbacks;

    string emptyString;
};

#endif /* __ArgvManager_h__ */
