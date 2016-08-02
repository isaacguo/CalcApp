/*
 * CalcEngine.h
 *
 *  Created on: Jul 27, 2016
 *      Author: isaac
 */

#ifndef CALCENGINE_H_
#define CALCENGINE_H_

class CalcEngine {
public:
	CalcEngine();
	virtual ~CalcEngine();

	int add(int x, int y);
	int minus(int x ,int y);
};

#endif /* CALCENGINE_H_ */
