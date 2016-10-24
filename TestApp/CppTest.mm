//
//  CppTest.m
//  TestApp
//
//  Created by Carlos Oliveira on 8/12/13.
//  Copyright (c) 2013 Carlos Oliveira. All rights reserved.
//

#import "CppTest.h"

@implementation CppTest

@end


class Logger {
public:
	void addLog(NSString *s);
};

void Logger::addLog(NSString *s)
{
	NSLog(@"here is my message: %@", s);
}

@interface Example1 : NSObject

@end

@implementation Example1

- (void) createCppObj
{
	Logger logger;
	logger.addLog(@"my message");
}

@end


class MyCollection {
public:
	MyCollection();
	~MyCollection();
	void add(id obj);
	int size();
private:
	NSMutableArray *array;
};

MyCollection::MyCollection() {
	array = [[NSMutableArray alloc] init];
}

MyCollection::~MyCollection() {
	[array release];
}

void MyCollection::add(id obj)
{
	[array addObject:obj];
}

int MyCollection::size()
{
	return (int)[array count];
}

@interface Example1 (more)

@end

@implementation Example1 (more)

- (void) useMyCollection
{
	MyCollection * c = new MyCollection;
	c->add(@"test 1");
	c->add(@"test 2");
	NSLog(@"the size is %d", c->size());
}

@end