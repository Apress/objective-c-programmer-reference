//
//  TestAppTests.m
//  TestAppTests
//
//  Created by Carlos Oliveira on 2/18/13.
//  Copyright (c) 2013 Carlos Oliveira. All rights reserved.
//

#import "TestAppTests.h"

#import "StringOps.h"

@interface SimpleClass : NSObject

- (int)myMethod;

@end

@implementation SimpleClass

- (int)myMethod {
	return 4;
}

@end


@implementation TestAppTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (SimpleClass *)myMethod
{
    SimpleClass *myObj = [[SimpleClass alloc] init];
    return myObj;
}

- (void)testReverse
{

	StringOps *so = [[StringOps alloc] init];
	STAssertTrue(so != nil, @"check object created");

	STAssertEqualObjects([so reverse:@"ABC"], @"CBA", @"check string reversal");

	STAssertEqualObjects([so reverse:@""], @"", @"check empty strings");
}

- (void)testGetFirstChar
{
	StringOps *so = [[StringOps alloc] init];
	STAssertThrows([so getFirstChar:@""], @"checks for exception on empty string");
}

- (void)testExample
{
	// This code will be run by OCUnit
	STAssertTrue(TRUE, @"sample test");
}

- (void)testExample2
{

	SimpleClass *myObj;
    myObj = [self myMethod];
	int value = [myObj myMethod];
	switch (value)
	{
		case 1:
		case 5:
			STFail(@"Failing test for unsupported value");
			break;
		default:
			break;
	}
	STAssertEqualObjects(nil, nil, @"sdfsf");
	STAssertTrue(1, @"always true");
}

@end
