#include "FilePtr.h"
#include "RuntimeError.h"
#include <cstdio>
#include <pwd.h>            //getpwuid
//#include <sys/types.h>
#include <unistd.h>         //getuid
#include <sys/stat.h>

FilePtr::FilePtr(const std::string filename, const std::string access) :
    file{nullptr}
{
	using std::string;

    struct passwd* pw{getpwuid(getuid())};
    const string homedir{pw->pw_dir};
    const string dir{"/.ppsim/"};
    const string path{homedir + dir};

    struct stat sb{};
    int stat_err = stat(path.c_str(), &sb);

    if (stat_err !=0) {
        int mkdir_err = mkdir(path.c_str(), S_IRWXU);
        if (mkdir_err != 0) {
            throw RuntimeError{"Couldn't create directory"};
        }
    }

    file = fopen(filename.c_str(), access.c_str());
    if (file) {
        throw RuntimeError{"File couldn't be open"};
    }
}
