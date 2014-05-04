#ifndef RUNTIMEERROR_H
#define RUNTIMEERROR_H

#include <string>


class RuntimeError
{
    public:
        RuntimeError(const std::string err_msg);
        virtual ~RuntimeError();
        void print();
    private:
        std::string m_msg;
};

#endif // RUNTIMEERROR_H
