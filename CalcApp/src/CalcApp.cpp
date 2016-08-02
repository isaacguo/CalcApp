//============================================================================
// Name        : CalcApp.cpp
// Author      : Isaac Guo
// Version     :
// Copyright   : GPL
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <CalcComponent/CalcEngine.h>
using namespace std;

int main(int argc, char** argv) {
	CalcEngine engine;
        int foo=10;
	int bar=20;
	cout<<"*************"<<endl;;
	cout<<endl;
	cout<< "foo+bar = "<<engine.add(foo, bar)<<endl;;
	cout<<endl;
	cout<< "foo-bar = "<<engine.minus(foo, bar)<<endl;;
	cout<<endl;
	cout<<"*************"<<endl;

	return 0;
}
