#include "RuntimeError.h"
#include <iostream>

RuntimeError::RuntimeError(const std::string msg) :
    m_msg{msg}
{}

RuntimeError::~RuntimeError()
{}

void
RuntimeError::print() {
    std::cout << m_msg << std::endl;
}
