#ifndef __PathMark_h__
#define __PathMark_h__

#include <map>
#include <string>
#include <vector>

using namespace std;


class PathMark
{
public:
    PathMark();
    ~PathMark();
    PathMark( const PathMark &cpy );

    // Function
    void SetPathMark(const vector<string>& param);
    void GetPathMark(const vector<string>& param);
    void AllPathMark(const vector<string>& param);
    void DelPathMark(const vector<string>& param);
    void GoPathMark(const vector<string>& param);
    void PathMarkHelper(const vector<string>& param);


    // register
    void Register();



private:
};

#endif /* __PathMark_h__ */
