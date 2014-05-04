#ifndef FILEPTR_H
#define FILEPTR_H

#include <cstdio>
#include <string>


class FilePtr
{
    public:
        FilePtr(const std::string filename, const std::string access);
        ~FilePtr() {fclose(file);}
    private:
        FILE* file;
};

#endif // FILEPTR_H
