//
//  StringOps.m
//  TestApp
//
//  Created by Carlos Oliveira on 8/19/13.
//  Copyright (c) 2013 Carlos Oliveira. All rights reserved.
//

#import "StringOps.h"

@implementation StringOps

- (NSString*)reverse:(NSString *)string
{
	char* cstr = (char*)[string UTF8String];
	int size = (int)[string length];
	int i, j;
	for (i=0, j=size-1; i<size/2; ++i, j--)
	{
		char c = cstr[i];
		cstr[i] = cstr[j];
		cstr[j] = c;
	}

	return [NSString stringWithCString:cstr encoding:NSUTF8StringEncoding];
}

- (char)getFirstChar:(NSString *)string
{

	if ([string length] < 1)
		@throw [[NSException alloc] initWithName:@"firstChar" reason:@"StringIsEmpty" userInfo:nil];
	return [string characterAtIndex:0];
}

@end
