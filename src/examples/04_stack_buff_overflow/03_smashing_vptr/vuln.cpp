#include <string.h>
#include <stdio.h>

class Base {
public:
    virtual ~Base() {}
    virtual void foo() = 0;
};

class Derived: public Base {
public:
    void foo() override {
        printf("Derived foo\n");
    }
};


int main(int argc, char* argv[]) {
    char buff[64];
    Base *base = new Derived{};
    strcpy(buff, argv[1]);
    base->foo();
    delete base;
    return 0;
}

// 0xbffff5dc