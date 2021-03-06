//
//  Created by Carlos Oliveira on 2/18/13.
//  Copyright (c) 2013 Carlos Oliveira. All rights reserved.
//
#import <Foundation/NSObject.h>
#import "AppDelegate.h"


NSMutableString *s323;

NSMutableData *s2222;

///////////////////////////

#define MAX_PATH_LENGTH 255

#define BEGIN {
#define END }
#define PROCEDURE void

PROCEDURE myFunction(int val)
BEGIN
	if (val > 0)
	BEGIN
		NSLog(@"value is positive");
    END

END


@class MyExternalClass;

@interface MyInternalClass : NSObject {
	MyExternalClass *externalObject;
}

-(MyExternalClass*) getExtObject;

@end

// file MyInternalClass.m

//#import "MyExtenalClass.h"

@implementation MyInternalClass

- (MyExternalClass*) getExtObject
{
	// implementation here ...
	return nil;
}

- (void) accessArray:(int) index
{
	int *values = (int*)malloc(sizeof(int)*10);
	// initialize values array here...

	// index contains -1 in this example:
	int result = values[index];
	NSLog(@"result is %d", result);
	free(values);
}

- (void) getArrayValue
{
	NSArray *values = @[ @0, @1, @2, @3];
	NSArray *numbers = values;

	// do something with the values array here.

	[values release];
	id two = numbers[2];
	NSLog(@"number is %@", two);
}


@end

#define MAXIMUM(a, b)  \
  (a) > (b) ? \
	 (a) : \
     (b)

#define EXP_TRUE(expression) \
  if (expression) \
    NSLog(@"the following expression is true: " #expression)

@interface A1 : NSObject

@end

@implementation A1

- (void) useMacro
{
	EXP_TRUE(2 + 3 > 4);
}

- (double)squareRoot:(double) x
{
	assert(x > 0);
	// perform calculations here
	return 0;
}

- (int) getSupportLevel
{
#if VERSION > 5
	return 2;
#elif VERSION >= 2 && VERSION <= 5
	return 1;
#else
	return 0;
#endif
}

- (int) getSupportLevel2
{
#if VERSION > 5
	return 2;
#endif


#if VERSION >= 2 && VERSION <= 5
	return 1;
#endif

#if VERSION < 2
	return 0;
#endif
}

- (void) detectGCCCompiler
{
#ifdef __GCC__
	NSLog(@"This is the GCC compiler");
#endif

#ifndef __GCC__
	NSLog(@"This is not the GCC compiler");
#endif
}


- (BOOL) systemIsSupported
{
#if defined(__GCC__) && VERSION > 3
	return YES;
#else
	return NO;
#endif
}

#ifndef INCLUDED_MYFILE
#define INCLUDED_MYFILE


#endif

#define VARIABLE_NAME(partA, partB) \
   partA ## _ ## partB


- (void)useMacroConcatenation
{

	int VARIABLE_NAME(my, variable) = 10;
	NSLog(@"the value is %d", my_variable);
}


- (void)useMacro3
{

	int VARIABLE_NAME(my, variable) = 10;


	int i = 10;
	NSLog(@"the maximum is %d", MAXIMUM(i++, 11));
}


- (BOOL)checkPathSize:(NSString *)path
{
	if ([path length] > MAX_PATH_LENGTH )
	{
		NSLog(@"Error: the path length is invalid");
		return NO;

	}
	return YES;
}

@end

//

// fundamental classes

NSObject *a10;
NSString *a45;

///////

NSValue *c1;
NSNumber *b1;
NSDate *u;
NSCalendar *l;
NSData *t;

// Collections

NSArray *f;
NSDictionary *y;


NSHashTable *oo;
NSOrderedSet *a12;
NSSet*a41;



NSRange *a25;

////////
NSAffineTransform *a;
NSAppleEventDescriptor *b;
NSAppleEventManager *c;
NSAppleScript *d;
NSArchiver *e;

NSAttributedString *g;
NSAutoreleasePool *h;
NSBundle *i;
NSByteCountFormatter *j;
NSCache *k;

NSCalendarDate *m;
NSCharacterSet *n;
NSClassDescription *o;
NSCoder *p;
NSComparisonPredicate *q;
NSCompoundPredicate *r;
NSConnection *s;


NSDateFormatter *v;
NSDecimal *w;
NSDecimalNumber *x;
//
NSDistantObject *z;
NSDistributedLock *aa;
NSDistributedNotificationCenter *bb;
NSEnumerator *cc;
NSError *dd;
NSException *ee;
NSExpression *ff;
NSFileCoordinator *gg;
NSFileHandle *hh;
NSFileHandle *ii;
NSFileManager *jj;
NSFileVersion *kk;
NSFileWrapper *ll;
NSFormatter *mm;
NSGarbageCollector *nn;
///
NSHost *pp;
NSHTTPCookie *qq;
NSIndexPath *rr;
NSIndexSet *ss;
NSInvocation *tt;
NSJSONSerialization *uu;
NSKeyedArchiver *vv;
NSKeyValueChange *ww;
NSKeyValueObservingOptions *xx;
NSLinguisticTagger *yy;
NSLocale *zz;
NSLock *a1;
NSMapTable *a2;
NSMetadataItem *a3;
NSMethodSignature *a4;
NSNetService *a5;
NSNotification *a6;
NSNotificationQueue *a7;
NSNull *a8;
NSNumberFormatter *a9;
//
NSOperation *a11;
//
NSOrthography *a13;
NSPointArray *a14;
NSPointerFunctions *a15;
NSPort *a16;
NSPortCoder *a17;
NSPortMessage *a18;
NSPortNameServer *a19;
NSPredicate *a20;
NSProcessInfo *a21;
NSPropertyListFormat *a22;
NSProtocolChecker *a23;
NSProxy *a24;
//
NSRegularExpression *a26;
NSRunLoop *a39;
NSScanner *a40;
//
NSSortDescriptor *a42;
NSSpellChecker *a43;
NSStream *a44;
//
NSTask *a46;
NSTextCheckingResult *a47;
NSThread *a48;
NSTimer *a49;
NSTimeZone *a50;
NSUndoManager *a51;
NSURL *a52;
NSURLAuthenticationChallenge *a53;
NSURLCache *a54;
NSURLConnection *a55;
NSURLCredential *a56;
NSURLDownload *a57;
NSURLHandle *a58;
NSURLProtocol *a59;
NSURLRequest *a60;
NSURLResponse *a61;
NSUserDefaults *a62;
NSUserNotification *a63;
NSUserScriptTask *a64;
NSValue *a65;
NSValueTransformer *a66;
NSXMLDocument *a67;
NSZone *a68;





// File AsyncDataWriter.h

@interface AsyncDataWriter : NSObject <NSStreamDelegate>
{
	NSOutputStream *_outStream;
	int _position;
}

- (void) setupOutputStream:(NSString*)fileName;

- (void)stream:(NSStream *)stream handleEvent:(NSStreamEvent)event;

+ (AsyncDataWriter*)testWrite;

@property (retain) NSArray *outData;

@end

@implementation AsyncDataWriter

- (void) setupOutputStream:(NSString*)fileName
{
	NSURL *url = [NSURL URLWithString:fileName];

	if (_outStream == nil)
	{
		_outStream = [[NSOutputStream alloc]
					  initWithURL:url
					  append:YES];
		self.outData = @[
				   @"A string\n",
				   @"B values\n",
				   @"C test\n",
				   @"D class\n" ];
		_position = 0;
	}
	[_outStream setDelegate:self];
	[_outStream scheduleInRunLoop:[NSRunLoop currentRunLoop]
						  forMode:NSDefaultRunLoopMode];

	[_outStream open];
}


- (void)releaseStream
{
	@throw [NSException exceptionWithName:@"salaryException"
								   reason:@"no salary available"
								 userInfo:NULL];
	[_outStream close];
	[_outStream removeFromRunLoop:[NSRunLoop currentRunLoop]
						  forMode:NSDefaultRunLoopMode];
	[_outStream release];
	_outStream = nil;
}

#define NUM_ITEMS_IN_ARRAY 50

- (void)stream:(NSStream *)stream handleEvent:(NSStreamEvent)event
{
	char bytes[NUM_ITEMS_IN_ARRAY];
	switch (event)
	{
		case NSStreamEventHasSpaceAvailable:
			_position++;
			if (_position <= [_outData count])
			{

				NSString *element = _outData[_position-1];
				[element getCString:bytes
						  maxLength:NUM_ITEMS_IN_ARRAY
						   encoding:NSASCIIStringEncoding];
				NSLog(@"ss %s %d", bytes, (int)[element length]);
				[_outStream write:(const uint8_t *)bytes
						maxLength:[element length]];
			}
			else
			{
				[self releaseStream];
			}
			break;
		case NSStreamEventEndEncountered:
			[self releaseStream];
			break;
		default:
			break;
	}
}

- (void)dealloc
{
	self.outData = nil;
	[super dealloc];
}

+ (AsyncDataWriter*)testWrite
{
	AsyncDataWriter *writer = [[AsyncDataWriter alloc] init];
	[writer setupOutputStream:@"file:///Users/coliveira/testFile4"];
	return [writer autorelease];
}

@end

// File AsyncDataReader.h

@interface AsyncDataReader : NSObject <NSStreamDelegate>
{
	NSInputStream *_stream;
	NSMutableData *_data;
	NSOutputStream *_outStream;

}

- (void)setupStream:(NSString*)path;

- (void)stream:(NSStream *)stream handleEvent:(NSStreamEvent)event;

+ (AsyncDataReader*)testRead;

@property (retain) NSData *outData;

@end

// file AsyncDataReader.m

//#import "AsyncDataReader.h"

@implementation AsyncDataReader

- (void) setupStream:(NSString*)fileName
{
	NSURL *url = [NSURL URLWithString:fileName];

	if (_stream == nil)
		_stream = [[NSInputStream alloc] initWithURL:url];
	[_stream setDelegate:self];
	[_stream scheduleInRunLoop:[NSRunLoop currentRunLoop]
					   forMode:NSDefaultRunLoopMode];

	[_stream open];
}



#define NUM_ITEMS_IN_ARRAY 5

- (void)stream:(NSStream *)stream handleEvent:(NSStreamEvent)event
{
	uint8 bytes[NUM_ITEMS_IN_ARRAY];
	switch (event)
	{
		case NSStreamEventHasBytesAvailable:
		{
			if  (_data == nil)
				_data = [[NSMutableData alloc] init];
			NSInteger len = [(NSInputStream*)stream read:bytes maxLength:NUM_ITEMS_IN_ARRAY];
			[_data appendBytes:bytes length:len*sizeof(bytes[0])];
			NSLog(@"Data received: %ld bytes: ", len);
			// save data stored in bytes

		}
			break;
		case NSStreamEventEndEncountered:
        {
			[_stream close];
			[_stream removeFromRunLoop:[NSRunLoop currentRunLoop]
							   forMode:NSDefaultRunLoopMode];
			[_stream release];
			_stream = nil;
		}
			break;
		default:
			break;
	}
}

+ (AsyncDataReader*) testRead
{
	AsyncDataReader *reader = [[AsyncDataReader alloc] init];
	[reader setupStream:@"file:///Users/coliveira/testFile"];
	return [reader autorelease];
}

- (void) dealloc
{
	[_data release];
	[super dealloc];
}

@end

// file ReadBinaryData.h

@interface ReadBinaryData : NSObject

- (NSData*)readData:(NSString*)fileName;

+ (void) testRead;

@end

// file ReadBinaryData.m

//#include "ReadBinaryData.h"

@implementation ReadBinaryData

#define MAX_DATA_SIZE 1024

- (NSData*)readData:(NSString*)fileName
{
	NSURL *url = [NSURL URLWithString:fileName];

	NSError *error;
	NSData *data = [NSData dataWithContentsOfURL:url options:NSDataReadingUncached error:&error];
	if (data == nil)
	{
		NSLog(@"error reading file: %@", [error userInfo]);
	}
	else
	{
		int data_size = (int)[data length];
		
		unichar array[MAX_DATA_SIZE];
		int size = data_size;
		if (data_size > MAX_DATA_SIZE) size = MAX_DATA_SIZE;

		[data getBytes:array length:size];
		NSString *dataStr = [NSString stringWithCharacters:array length:size];
		NSLog(@"first bytes of data are: %@", dataStr);
	}
	return data;
}


- (void)writeData:(int*)numbers length:(int)size
			 dest:(NSString*)fileName
{
	NSURL *url = [NSURL URLWithString:fileName];

	NSError *error;
	NSData *data = [NSData dataWithBytes:numbers length:sizeof(int)*size];
	BOOL ok = [data writeToURL:url
					   options:NSDataWritingAtomic
						 error:&error];

	if (!ok)
	{
		NSLog(@"error writing to file: %@", [error userInfo]);
	}

}

+ (void) testRead
{
	ReadBinaryData *reader = [[ReadBinaryData alloc] init];
	[reader readData:@"file:///Users/coliveira/testFile"];
	int numbers[] = { 5, 4, 3, 2, 1 };
	[reader writeData:numbers length:5 dest:@"file:///Users/coliveira/testFile3"];
	[reader release];
}


@end


// file FileWriter.h

@interface FileWriter : NSObject

+ (void) writeTest;

- (void) writeFile:(NSString*) fileName content:(NSString*)data;

@end


// file FileWriter.m

//#include "FileWriter.h"

@implementation FileWriter

- (void) writeFile:(NSString*) fileName content:(NSString*)data;
{
	NSURL *url = [NSURL URLWithString:fileName];

	NSError *error;
	BOOL res = [data writeToURL:url
					 atomically:NO
					   encoding:NSUnicodeStringEncoding
						  error:&error];
	if (!res)
	{
		NSLog(@"error writing to file %@", [error userInfo]);
	}


}

+ (void) writeTest
{
	FileWriter *writer = [[FileWriter alloc] init];
	[writer writeFile:@"file:///Users/coliveira/testFile2"
	  content:@"This is the content of the file written by"
					 " the file writer."];
}

@end

// file FileReader.h

@interface FileReader : NSObject

+ (void) readTest;

- (void) readFile:(NSString*) fileName;

@end

// file FileReader.m

//#include "FileReader.h"

@implementation FileReader

- (void) readFile:(NSString*) fileName
{
	NSURL *url = [NSURL URLWithString:fileName];

	NSError *error;
	NSString *str = [NSString
					 stringWithContentsOfURL:url
					 encoding:NSStringEncodingConversionAllowLossy
					 error:&error];

	NSLog(@"String is %@", str);
}

+ (void) readTest
{
	FileReader *reader = [[FileReader alloc] init];
	[reader readFile:@"file:///Users/coliveira/testFile"];
}

@end


/// KV programming


// file BankEmployee.h
@interface BankEmployee : NSObject

@property double salary;

- (id) init ;

// other properties and methods here

@end


// file BankEmployee.m
@implementation BankEmployee

- (id) init
{
	self = [super init];
	if (self)
	{
		self.salary = 200000.0;
	}
	return self;
}

@end


// file Bank.h
@interface Bank : NSObject {
	NSArray *employees;
}

- (NSUInteger) countOfBankEmployees;

- (id) objectInBankEmployeesAtIndex:(NSUInteger)index;

+ (void) accessBankData;

- (id) init;

@end

// file Bank.m
//#import "Bank.h"
@implementation Bank

- (id) init
{
	self = [super init];
	if (self)
	{
		self->employees = @[[[[BankEmployee alloc] init] autorelease]];
		[employees retain];
	};
	return self;
}

- (NSUInteger) countOfBankEmployees
{
	return self->employees.count;
}

- (id) objectInBankEmployeesAtIndex:(NSUInteger)index
{
	id r = self->employees[index];
	return r;
}

- (void) dealloc
{
	[self->employees release];
	[super dealloc];
}

+ (void) accessBankData2
{
	Bank *bank = [[Bank alloc] init];

	NSArray * res = [bank valueForKeyPath:@"bankEmployees"];
	NSLog(@"The first employee is %@", res[0]);
}

+ (void) accessBankData
{
	Bank *bank = [[Bank alloc] init];

	id res = [bank valueForKeyPath:@"bankEmployees.@sum.salary"];
	NSLog(@"The total salary amount is %@", res);
	[bank release];
}


@end


@interface BankPayrool : NSObject {
	BankEmployee *employee;
	double _currentSalary;
}

- (id) initWithEmployee:(BankEmployee *)anEmployee;
- (void) startObserving;
+ (void) useBankPayroll;

@end

@implementation BankPayrool

- (id) initWithEmployee:(BankEmployee *)anEmployee
{
	self = [super init];
	if (self)
	{
		employee = anEmployee;
		[employee retain];
	}
	return self;
}

- (void) dealloc
{
		[employee removeObserver:self forKeyPath:@"salary"];
	[employee release];
	[super dealloc];
}

- (void) startObserving
{
	[employee addObserver:self forKeyPath:@"salary"
				  options:NSKeyValueObservingOptionNew
				  context:nil];
}

- (void) observeValueForKeyPath:(NSString *)keyPath
					   ofObject:(id)object
						 change:(NSDictionary *)change
						context:(void *)context
{
	if (object == employee) {
		[self setValue:
		 [change objectForKey:NSKeyValueChangeNewKey]
				forKey:@"currentSalary"];
		NSLog(@"current salary is now %lf", _currentSalary);
	}
}

+ (void) useBankPayroll
{
	BankEmployee *employee = [[BankEmployee alloc] init];
	BankPayrool *payroll = [[BankPayrool alloc] initWithEmployee:employee];

	[payroll startObserving];
	[employee setValue:@300000.0 forKey:@"salary"];
	[payroll release];
	[employee release];
}

@end


// file Bank.h
@interface Bank2 : NSObject

@property (retain) BankEmployee *employee;

+ (void) accessBank ;

- (id) init;

@end

// file Bank.m
//#import "Bank.h"
@implementation Bank2

- (id) init
{
	Bank2 *obj = [super init];
	if (obj)
	{
		obj.employee = [[BankEmployee alloc] init];
	}
	return obj;
}


+ (void) accessBank {
	Bank2 *bank = [[Bank2 alloc] init];

	id res = [bank valueForKeyPath:@"employee.salary"];
	NSLog(@"The salary is %@", res);
}

- (void) dealloc
{
	self.employee = nil;
	[super dealloc];
}

@end


// file KVStructSample.h

typedef struct
{
	int anInt;
	double aDouble;
} SampleStruct;



@interface KVStructSample : NSObject {
	SampleStruct _structValue;
}

@property SampleStruct structValue;

@end

@implementation KVStructSample

- (id) init
{
	KVStructSample *obj = [super init];
	if (obj)
	{
		SampleStruct val = { 1, 2.0 };
		obj.structValue = val;
	}
	return obj;
}

- (id)valueForUndefinedKey:(NSString *)key
{
 	return [NSNumber numberWithInt:0];
}

+ (void) accessData
{
	KVStructSample *sample = [[KVStructSample alloc] init];
	NSValue *val = [sample valueForKey:@"structValue"];
	SampleStruct structVal;
	[val getValue:&structVal];
	NSLog(@"The value is %d and %lf", structVal.anInt, structVal.aDouble);
	[sample release];
}

@end


// file: KVSample.h

// sample interface containing three variables
@interface KVSample : NSObject

@property int anInt;

@property double aDouble;

@property (retain) NSString *aString;

- (id) init;

+ (BOOL) accessInstanceVariablesDirectly;

+ (void) accessData;

@end


// file: KVSample.m

//#import "KVSample.h"

@implementation KVSample

- (id) init
{
	KVSample *obj = [super init];
	if (obj)
	{
		obj.anInt = 10;
		obj.aDouble = 11.0;
		obj.aString = @"test";
	}
	return obj;
}


+ (void) accessData
{
	KVSample *sample = [[KVSample alloc] init];
	NSNumber *a = [sample valueForKey:@"anInt"];
	NSLog(@"int value: %@", a);
	NSNumber *b = [sample valueForKey:@"aDouble"];
	NSLog(@"double value: %@", b);
	NSNumber *c = [sample valueForKey:@"aString"];
	NSLog(@"double value: %@", c);

	[sample setValue:@20 forKey:@"anInt"];
	[sample setValue:@44.0 forKey:@"aDouble"];
	[sample setValue:@"another value" forKey:@"aString"];
	[sample setValue:@YES forKey:@"enabled"];

	a = [sample valueForKey:@"anInt"];
	NSLog(@"int value: %@", a);
	b = [sample valueForKey:@"aDouble"];
	NSLog(@"double value: %@", b);
	c = [sample valueForKey:@"aString"];
	NSLog(@"double value: %@", c);
}

+ (BOOL) accessInstanceVariablesDirectly {
	return NO;
}

@end

/// Memory Management


// file SimpleReference.h
@interface SimpleReference : NSObject

@property (retain) SimpleReference *nextObject;
+ (SimpleReference*) setupCircularReferences;

@end

// file SimpleReference.m
//#import "SimpleReference.h"
@implementation SimpleReference

+ (SimpleReference*) setupCircularReferences {
	SimpleReference *r1 = [[SimpleReference alloc] init];
	SimpleReference *r2 = [[SimpleReference alloc] init];
	SimpleReference *r3 = [[SimpleReference alloc] init];

	// create circular references
	r1.nextObject = r2;
	r2.nextObject = r3;
	r3.nextObject = r1;

	return [r1 autorelease];
}

+ (SimpleReference*) setupReferences:(NSMutableArray*)refs {
	SimpleReference *r1 = [[SimpleReference alloc] init];
	SimpleReference *r2 = [[SimpleReference alloc] init];
	SimpleReference *r3 = [[SimpleReference alloc] init];

	// create circular references
	r1.nextObject = r2;
	r2.nextObject = r3;
	r3.nextObject = r1;

	[refs addObject:r1];
	[refs addObject:r2];
	[refs addObject:r3];

	return [r1 autorelease];
}

@end

// file SimpleReferenceUtil.h
@interface SimpleReferenceUtil : NSObject

@property (retain) SimpleReference *aReference;

- (void) createReference;

@end


// file SimpleReferenceUtil.m
//#import "SimpleReferenceUtil.h"
@implementation SimpleReferenceUtil

- (void) createReference
{
	self.aReference = [SimpleReference setupCircularReferences];
}

@end

// file Book.h
@interface Book : NSObject

- (void) updateBook:(NSString*)name authors:(NSArray*)authors
			  cover:(NSImage*)image;

@property (assign) NSString *bookName;
@property (copy) NSArray *authors;
@property (retain) NSImage *coverImage;

@end

// file Book.m
//#import Book.h
@implementation Book

- (void) updateBook:(NSString*)name authors:(NSArray*)authors
			  cover:(NSImage*)image
{
	self.bookName = name;
	[name retain]; // retain is needed here
	self.authors = authors; // no need for retain
	self.coverImage = image;
}

- (void) dealloc {
	[self.bookName release];
	self.authors = nil;
	self.coverImage = nil;
	[super dealloc];
}

- (void) replaceName:(NSString*)newName
{
	[_bookName autorelease];
	_bookName = newName;
}

- (void) replaceName2:(NSString*)newName
{
	NSString *oldName = _bookName;
	_bookName = newName;
	[oldName release];
}

- (void) circularReference {
	
}

@end

int amain()
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	// main application loop is here

	[pool release];

	@autoreleasepool {
		// statements here
	}
	return 0;
}

// file SortArray.h
@interface SortArray : NSObject

- (NSArray *) sortIntegerItems:(NSArray *)data;
@property(assign) NSArray *outpuData;

@end

// file SortArray.m

//#import SortArray.h"
@implementation SortArray

- (NSArray *) sortIntegerItems:(NSArray *)data {
	NSArray *output =[[NSArray alloc] initWithArray:data];
	//NSArray *output = [NSArray arrayWithArray:data];
	[output sortedArrayUsingComparator:^(id obj1, id obj2){
		if ([obj1 integerValue] > [obj2 integerValue]) {
			return (NSComparisonResult)NSOrderedDescending;
		}

		if ([obj1 integerValue] < [obj2 integerValue]) {
			return (NSComparisonResult)NSOrderedAscending;
		}
		return (NSComparisonResult)NSOrderedSame;
	}];
	return [output autorelease];  // memory leak happens here
}

@end

// file ArrayUse.h
@interface ArrayUse : NSObject {
	NSArray *myArray;
}

- (void) useArray;
- (void) dealloc;

@end

// file ArrayUse.m

//#import "ArrayUse.h"
@implementation ArrayUse

- (void) useArray
{
	myArray = [NSArray arrayWithObjects:@1, @2, @3, nil];

	// do something with array ...

	// this array was not created with init/new/copy
	// so we need to retain it:
	[myArray retain];
}

// other methods using myArray

- (void) dealloc {
	// the array is owned by this object. Release it.
	[myArray release];
	[super dealloc];
}

@end

// file Factory.h
@interface Factory : NSObject

- (void) startProduction;

@end

@implementation Factory

+ (void) setupProduction {
	Factory *productFactory = [[Factory alloc] init];
	[productFactory startProduction];
	[productFactory release];
}

- (void) startProduction {

}

@end


// file FactoryManagement.h

/// responsible for managing a Factory object.
@interface FactoryManagement : NSObject
{
	Factory *factory;
}

- (void) setupProductionManagement:(Factory*)factory;

- (void) dealloc;


@end

// file FactoryManagement.m

//#include "FactoryManagement.h"

@implementation FactoryManagement


- (void) setupProductionManagement:(Factory *)aFactory
{
	factory = aFactory;
	[factory retain];
}

- (void) dealloc
{
	[factory release];
	[super dealloc];
}

@end


@interface  Fact : NSObject

@end

@implementation Fact

- (void) setupManager {
	Factory *productionFactory = [[Factory alloc] init];
	FactoryManagement *management = [[FactoryManagement alloc] init];
	[management setupProductionManagement:productionFactory];

	// do work here

	[management release];
	
}

@end


/// dynamic features

// file UseIMP.h
@interface UseIMP : NSObject

- (void) simpleMethod:(int)param;

- (void) callSimpleMethod;

- (void) callWithImplementation;

@end

// file UseIMP.m
@implementation UseIMP

- (void)simpleMethod:(int)param
{
	// implementation here
	NSLog(@"method called with value %d", param);
}

- (void) callSimpleMethod {
	int i;
	for (i=0; i<10; ++i) {
		[self simpleMethod:i];
	}
}

typedef void (*MY_FUNC)(id, SEL, int);

- (void) callWithImplementation {
	SEL selector = @selector(simpleMethod:);
	IMP imp_func = [self methodForSelector:selector];
	MY_FUNC myFunc = (MY_FUNC)imp_func;
	int i;

	for (i=0; i<10; ++i)
	{
		myFunc(self, selector, i);
	}
}

@end

// file MortgageSecurity.h
@interface MortgageSecurity : NSObject

- (void)calculateDebt;
- (void)reapraise;
- (void)calculateTaxes;

@end

// MortgageSecurity.m
@implementation MortgageSecurity

- (void)calculateDebt
{
	// ...
}

- (void)reapraise
{
	// ...
}

- (void)calculateTaxes
{
	// ...
}

@end

@interface FixedIncomeSecurity : NSObject

- (void)calculateAmortization;
- (void)calculateEquivalentBond;

@end

@implementation FixedIncomeSecurity

- (void)calculateAmortization {

}

- (void)calculateEquivalentBond {
	
}

@end

// file SecurityProxy
@interface SecurityProxy : NSObject

- (void)forwardInvocation:(NSInvocation *)anInvocation;

- (BOOL)respondsToSelector:(SEL) sel;

@property (retain) MortgageSecurity *mortgageSec;

@property (retain) FixedIncomeSecurity *fixIncomeSec;

@end

// file SecurityProxy
@implementation SecurityProxy

- (BOOL)respondsToSelector:(SEL) sel
{
	if ([super respondsToSelector:sel])
	{
		return YES;
	}
	if ([_fixIncomeSec respondsToSelector:sel]
		|| [_mortgageSec respondsToSelector:sel])
	{
		return YES;
	}
	return NO;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
	SEL selector = anInvocation.selector;
	if ([_mortgageSec respondsToSelector:selector])
	{
		[anInvocation invokeWithTarget:_mortgageSec];
	}
	else if ([_fixIncomeSec respondsToSelector:selector])
	{
		[anInvocation invokeWithTarget:_fixIncomeSec];
	}
	else
	{
		[super forwardInvocation:anInvocation];
	}
}

@end




// file SecurityProxy.h
@interface SecurityProxy2 : NSObject

@property(retain) MortgageSecurity *security;
- (void)calculateDebt;
- (void)reapraise;
- (void)calculateTaxes;

@end

// file SecurityProxy.m
@implementation SecurityProxy2

- (void)calculateDebt
{
	[_security calculateDebt];
}

- (void)calculateTaxes
{
	[_security calculateTaxes];
}

- (void)reapraise
{
	[_security reapraise];
}

@end


// file ButtonTest.h
@interface ButtonTest : NSObject

- (void) doWhenButtonPressed:(id)button;
- (void) setupButton:(NSButton *)aButton;
// other methods here

@end

// file ButtonTest.m
@implementation ButtonTest

- (void) doWhenButtonPressed:(id)button
{
	NSLog(@"We received a button press event");
}

- (void) setupButton:(NSButton *)aButton
{
	[aButton setAction:@selector(doWhenButtonPressed:)];
	[aButton setTarget:self];
}

@end

// file MailService.h
@protocol MailReceiver <NSObject>

- (void) onMailIsAvailable:(id)mail;

@end


@interface MailService2 : NSObject

@property(retain) id <MailReceiver> receiver;
- (void) processMail;

@end


// file MailService.m
@implementation MailService2

- (void) my_function {
	NSLog(@"sdfs");
}

- (void) processMail {
	id myMail = nil;
	// do something else to initialize myMail...
	[_receiver onMailIsAvailable:myMail];
}

@end

// file MailService.h
@interface MailService : NSObject

@property(retain) id receiver;
@property SEL selector;
- (void) processMail;

@end


// file MailService.m
@implementation MailService

- (void) processMail {
	id myMail = nil;
	// do something else to initialize myMail...
	[_receiver onMailIsAvailable:myMail];
	if (_selector && _receiver) {
		if ([_receiver respondsToSelector:_selector]) {
			[_receiver performSelector:_selector withObject:myMail];
		} else {
			NSLog(@"error: the receive does't respond to the given selector");
		}
	}
}

@end

// file MailReceiverImp.h
@interface MailReceiverImp : NSObject {
	MailService *_service1;
	MailService *_service2;
}

- (void) receiveMail1:(id)data;
- (void) receiveMail2:(id)data;
- (void) setupServices;

@end

// file MailReceiverImp.m
@implementation MailReceiverImp

- (void) receiveMail1:(id)data {
	NSLog(@"receiving email data from source 1");
}

- (void) receiveMail2:(id)data {
	NSLog(@"receiving email data from source 2");
}

- (void) setupServices {
	_service1 = [[MailService alloc] init];
	_service1.selector = @selector(receiveMail1:);
	_service1.receiver = self;

	_service2 = [[MailService alloc] init];
	_service2.selector = @selector(receiveMail2:);
	_service2.receiver = self;
}


@end


// file Selectors.h
@interface Selectors2 : NSObject

- (void) printValue:(id)obj;
- (void) createSelector;

@end

// file Selectors.m
@implementation Selectors2

- (void) printValue:(id)obj
{
	NSLog(@"printing the value of object: %@", obj);
}


- (void) displayData {
	NSLog(@"The value is 1");
}

- (void) createSelector {
	SEL sel = @selector(printValue:);
	// use selector here
	[self performSelector:sel withObject:@"parameter"];
	// this should print "The value is 1"
}

@end


// file Selectors.h
@interface Selectors : NSObject {
	SEL _sel;
}

- (void) printValue:(id)obj;
- (void) createSelector;
- (void) registerSelector:(SEL)sel;

@end

// file Selectors.m
@implementation Selectors

- (void) registerSelector:(SEL)sel  {
	_sel = sel;
}

- (void) printValue:(id)obj
{
	NSLog(@"printing the value of object: %@", obj);
}


- (void) displayData {
	NSLog(@"The value is 1");
}

- (void) createSelector {
	SEL sel = @selector(printValue:);
	// use selector here
	[self performSelector:sel withObject:@"parameter"];
	// this should print "The value is 1"
}

@end



//// --- BLOCKS - ch 06

// file UseBlock.h
@interface UseBlock : NSObject

- (void) receiveBlock:(int (^)())aBlock;

@end

// file UseBlock.m
@implementation UseBlock

- (void) receiveBlock:(int (^)())aBlock
{
	NSLog(@"the result is now: %d", aBlock());
}

@end

// file Blocks.h
@interface Blocks : NSObject {
	int _myIntValue;
}

- (void) callBlockMethod;

@end

// file Blocks.m
@implementation Blocks

- (void) simpleBlock
{
	int (^b)(int); // declare a block
	b = ^ int (int a)  // save block on variable
	{
		return a + 1;
	};
}

- (void) divisionBlock1
{
	double (^division)(int, double); // declare a block
	division = ^ double (int a, double b)  // save block on variable
	{
		return a / b;
	};
}

- (double) invalidBlock:(BOOL)initBlock :(BOOL)callBlock :(int)x1 :(int)x2
{
	double (^division)(int, double) = nil; 
	if (initBlock)
	{
		division = ^ double (int a, double b)  
		{
			return a / b;
		};
	}
	if (initBlock && callBlock)
	{
		return division(x1, x2);
	}
	return 0;
}

- (double) callValidBlock:(BOOL)initBlock :(BOOL)callBlock :(int)x1 :(int)x2
{
	double (^division)(int, double) = nil;
	if (initBlock)
	{
		division = [^ double (int a, double b)
		{
			return a / b;
		} copy];
	}
	if (initBlock && callBlock)
	{
		return division(x1, x2);
	}
	[division release];
	return 0;
}

- (void) countPositivesInArray
{
	NSArray *array = @[ @-1, @-2, @1, @2, @3];
	NSIndexSet *indices =
	[array indexesOfObjectsPassingTest:
	 ^ BOOL (id obj, NSUInteger idx, BOOL *stop) {
		 NSNumber *num = (NSNumber*)obj;
		 return [num integerValue] > 0;
	 }
	 ];
	NSLog(@"There are %d positive elements", (int)[indices count]);
	// this will show a result of 3
}

- (void) sortArray {
	NSArray *array = @[ @-1, @2, @100, @4, @-3];
	NSArray *sorted = [array sortedArrayUsingComparator:^  (id a, id b) {
		if ([a integerValue] > [b integerValue])
			return (NSComparisonResult)NSOrderedDescending;
		else if ([a integerValue] < [b integerValue])
			return (NSComparisonResult)NSOrderedAscending;
		return (NSComparisonResult)NSOrderedSame;
	}];
	for (id item in sorted) {
		NSLog(@"value is %@", item);
	}
	// this will print the items in sorted order
}

- (double (^)(int, double)) returnBlock
{
	return [[^ double (int a, double b)
			{
				return a / b;
			} copy] autorelease];
}


- (void) divisionBlock2
{
	double (^division)(int, double); // declare a block
	division = ^ (int a, double b)  // save block on variable
	{
		return a / b;
	};
	double result = division(1, 2);
	NSLog(@"the result is %lf", result); // will print 0.5
}

typedef double (^MathBlock)(int, double);

- (void) divisionBlock3
{
	MathBlock division; // declare a block
	division = ^ (int a, double b)  // save block on variable
	{
		return a / b;
	};
	double result = division(1, 2);
	NSLog(@"the result is %lf", result); // will print 0.5
}

- (void) divisionBlock4
{
	MathBlock division = ^ (int a, double b)
	{
		return a / b;
	};
	double result = division(1, 2);
	NSLog(@"the result is %lf", result); // will print 0.5
}

- (void) divisionBlock
{
	double (^division)(int, double);
	division = ^ (int a, double b) 
	{
		return a / b;
	};
}

- (void) showReadAcccess {
	int myVariable = 2;
	int (^getMultiple)();
	getMultiple = ^ { return 5 * myVariable ; };
	NSLog(@"Here is a the result: %d", getMultiple());
	// this should print the value 10
}

- (void) showWriteAcccess {
	__block int myVariable = 2;
	int (^getMultiple)(int);
	getMultiple = ^ (int base){
		myVariable = base;
		return 5 * myVariable ;
	};
	NSLog(@"Here is a the result: %d", getMultiple(3));
	// this should print the value 15
}

- (void) showInstVarReadAcccess2 {
	_myIntValue = 3;
	int (^getMultiple)();
	getMultiple = ^ { return 6 * _myIntValue ; };
	NSLog(@"Here is a the result: %d", getMultiple());
	// this should print the value 18
}

- (void) showVariableReadAcccess {
	_myIntValue = 3;
	__block int myVariable = 2;
	UseBlock *useBlock = [[UseBlock alloc] init];
	[useBlock receiveBlock:^ {
		myVariable = 5;
		return 5 * myVariable + 2 * _myIntValue;
	}];
}


- (void) useBlock2:(double (^)(int, int))aBlock {
	aBlock(1, 2);
}

typedef double (^DoubleIntIntBlock)(int, int);


- (void) useBlock:(DoubleIntIntBlock)aBlock {
	aBlock(1, 2);
}

//- (double (^)(int, int)) returnABlock {
	// return block here
//}

//- (DoubleIntIntBlock) returnABlock {
//  // return block here
//}

- (void) callBlockMethod2 {
	DoubleIntIntBlock myBlock;
	myBlock = ^ double (int a,int b) {
		NSLog(@"the values passed are %d and %d", a, b);
		return 1.0 + a + b;
	};
	[self useBlock:myBlock];
}

- (void) callBlockMethod {
	[self useBlock:^ double (int a,int b) {
		NSLog(@"the values passed are %d and %d", a, b);
		return 1.0 + a + b;
	}];
}

typedef int MyNewIntType;

- (void) getPI
{
	double (^f)(); // declare a block
	f = ^ {
		return 3.14;
	};
}

- (void) funcArg:(double (*)())ss {
	ss();
}

- (void) useBlock3:(double (^)(int, int))aBlock {
	aBlock(1, 2);
}

@end


/// --- ch5

// Cook.h
@interface Cook : NSObject
- (void)prepareRecipy;
- (void)acquireIngredients;
- (void)mixIngredients;
- (void)cookDish;
@end

// Cook.m
@implementation Cook

-(void) prepareRecipy {
	[self acquireIngredients];
	[self mixIngredients];
	[self cookDish];
}

- (void)acquireIngredients {
	
}
- (void)mixIngredients {
	
}
- (void)cookDish {
	
}



@end

// Vehicle.h
@interface Vehicle : NSObject
- (void) drive;

- (void) overridenMethodName ;
@end

@implementation Vehicle

- (void) drive {

}

- (void) overridenMethodName {
	
}

@end

// LivingPlace.h
@interface LivingPlace
- (void) setAddress:(NSString *)address;
@end


// LivingPlace.h
@protocol LivingPlace
- (void) setAddress:(NSString *)address;
@end


@interface Boat : Vehicle <LivingPlace>
{
	NSString *_address;
}
@end

@implementation Boat

- (void) setAddress:(NSString *)address
{
	self->_address = address;
}

- (void) overridenMethodName {
	[super overridenMethodName];
	// additional code goes here
}

@end


// DefaultLivingPlace.h
@interface DefaultLivingPlace : NSObject <LivingPlace> {
	NSString *_address;
}
@end

// DefaultLivingPlace.m
@implementation DefaultLivingPlace

- (void) setAddress:(NSString *)address
{
	self->_address = address;
}

@end

@interface Boat2 : Vehicle <LivingPlace>
{
	NSString *_address;
	DefaultLivingPlace *livingPlaceImp;
}
@end

@implementation Boat2

- (void) setAddress:(NSString *)address
{
	[self->livingPlaceImp setAddress:address];
}

@end

// LibraryHolding.h
@interface LibraryHolding : NSObject {
	NSString *patron;
	NSString *title;
}

- (id)init;
- (id)initWithPatron:(NSString*)patron;
- (id)initWithPatron:(NSString*)patron title:(NSString*)title;

@end

@implementation LibraryHolding

- (id)init {
	return [self initWithPatron:@""];
}

- (id) initWithPatron:(NSString *)aPatron {
	return [self initWithPatron:aPatron title:@""];
}

- (id) initWithPatron:(NSString *)aPatron title:(NSString *)aTitle {
	self = [super init];
    if (self) {
        self->patron = aPatron;
		self->title = aTitle;
	}
    return self;
}

@end

// PeriodicalHolding.h
@interface PeriodicalHolding : LibraryHolding {
	int number;
}

- (id)initWithPatron:(NSString*)patron title:(NSString*)aTitle number:(int)aNumber;
- (id)initWithTitle:(NSString*)aTitle number:(int)aNumber;

@end

@implementation PeriodicalHolding

- (id)initWithTitle:(NSString*)aTitle number:(int)aNumber {
	return [self initWithPatron:@"" title:aTitle number:aNumber];
}

- (id)initWithPatron:(NSString*)aPatron title:(NSString*)aTitle number:(int)aNumber
{
    self = [super initWithPatron:aPatron title:aTitle];
    if (self) {
        self->number = aNumber;
	}
    return self;
}

@end


// Employe.h
@interface Employee : NSObject {
	NSString *name;
}

- (void) setName:(NSString*) aName;

- (double) calculateSalary;

- (void) provideJobEvaluation;

@end

//
@interface ConcreteMatrix2 : NSObject {
	double *contents;
	int size;
}

- (void) initializeMatrix:(double *)vector size:(int)size;
- (void) performMatrixOperation;

@end

// AbstractMatrix
@interface AbstractMatrix : NSObject

- (void) initializeMatrix:(double *)vector size:(int)size;
- (void) performMatrixOperation;
+ (AbstractMatrix*) getMatrix;

@end

@interface ConcreteMatrix : AbstractMatrix {
	double *contents;
	int size;
}

- (void) initializeMatrix:(double *)vector size:(int)size;
- (void) performMatrixOperation;

@end

@implementation ConcreteMatrix

- (void) initializeMatrix:(double *)vector size:(int)size {

}

- (void) performMatrixOperation {
	
}

@end


@implementation AbstractMatrix

+ (AbstractMatrix*) getMatrix {
	return [[ConcreteMatrix alloc] init];
}

@end



// Employe.m
@implementation Employee

- (void) setName:(NSString*) aName {
	self->name = aName;
}

- (double) calculateSalary {
	double salary = 0;
	// perform salary calculation
	return salary;
}

- (void) provideJobEvaluation {
}

@end

// Contractor.h
@interface Contractor : Employee {
	NSString *thirdPartyCompany;
}

@end


// Contractor+NameHanding.h
@interface Contractor (NameHanding)
@end

// Employe.m
@implementation Contractor

- (void) provideJobEvaluation {
	// steps for contract job evaluation here
}

@end

// Contractor+NameHanding.m
@implementation Contractor (NameHanding)

- (void) setName:(NSString*) aName {
	self->name = [NSString stringWithFormat:@"contractor %@", aName];
}

@end

// HourlyEmployee.h
@interface HourlyEmployee : Employee

- (int) getHoursPerWeek;

@end

// HourlyEmployee.m
@implementation HourlyEmployee 

- (double) calculateSalary {
	double salary = 0;
	// perform salary calculation, as discussed later
	return salary;
}

- (int) getHoursPerWeek {
	// return number of hours
}

@end

// HourlyEmployee.h
@interface HourlyEmployee2: NSObject {
	NSString *name;
	int hoursPerWeek;
}

- (void) setName:(NSString*) aName;

- (double) calculateSalary;

- (int) getHoursPerWeek;

@end

// HourlyEmployee.m
@implementation HourlyEmployee2

- (void) setName:(NSString*) aName {
	self->name = aName;
}

- (double) calculateSalary {
	double salary = 0;
	// perform salary calculation for hourly employee
	return salary;
}

- (int) getHoursPerWeek {
	// return number of hours
}

@end



// FileType.h
@interface FileType : NSObject {
	// ivars
}

- (NSString*) getExtension;

@end

// FileType.m
@implementation FileType

- (NSString*) getExtension {
	NSString *ext = @"";
	return ext;
}

@end

// file DocumentType.h
@interface DocumentType  : FileType {
	// ivars here
}

- (BOOL) isValid;

@end

// file DocumentType.m
@implementation DocumentType

-(BOOL)isValid {
	if ([@"" isEqualToString:[self getExtension]]) {
		return false;
	}
	return true;
}


@end

//// ----

@interface  NSString  (utility)

- (NSString *) reverse;

@end

@implementation NSString (utility)

- (NSString *) reverse
{
	NSMutableString *resultString = [[[NSMutableString alloc] init] autorelease];
	
	int n = (int)[self length];
	for (int i=n-1; i>=0; --i)
	{
		[resultString appendFormat:@"%c", [self characterAtIndex:i]];
	}
	return resultString;
}

@end


// ---- PROTOCOLS

@protocol MoneyLender
@optional
- (BOOL) canExtendLoan;

@required
- (BOOL) canLend:(float)amount;
- (BOOL) lendRequest:(float)value toLoaner:(NSString*)loanerId;

@end


#if 0
@interface NSObject (MoneyLender)

- (BOOL) canLend:(float)amount;
- (BOOL) lendRequest:(float)value toLoaner:(NSString*)loanerId;

@end


@implementation NSObject (MoneyLender)

- (BOOL) canLend:(float)amount
{]
	return NO;
}

- (BOOL) lendRequest:(float)value toLoaner:(NSString*)loanerId
{
	return NO;
}

@end
#endif 

@interface InvestmentAdvisor : NSObject
{
	// other ivars here
}

@property (nonatomic, retain) NSObject <MoneyLender> *loanSource;

- (BOOL) findLoan:(float)amount;

@end

@implementation InvestmentAdvisor

- (BOOL) checkLoan
{
	if ([self.loanSource respondsToSelector:@selector(canExtendLoan)])
	{
		if ([self.loanSource canExtendLoan])
		{
			NSLog(@"The loan can be extended");
			return YES;
		}
	}
	return NO;
}

- (BOOL) findLoan:(float)amount
{
	BOOL canLend = [self.loanSource canLend:amount];
	if (canLend)
	{
		BOOL result = [self.loanSource lendRequest:amount
										  toLoaner:@"InvestmentClient"];
		if (result)
		{
			NSLog(@"The loan application was accepted");
			return YES;
		}
	}
	return NO;
}

- (BOOL) findLoan1:(float)amount
{
	SEL canLendSel = @selector(canLend:);
	SEL lendReqSel = @selector(lendRequest:toLoaner:);
	if([self.loanSource respondsToSelector:canLendSel] &&
	   [self.loanSource respondsToSelector:lendReqSel])
	{
		BOOL canLend = (BOOL)[self.loanSource canLend:amount];
		if (canLend)
		{
			BOOL result = (BOOL)[self.loanSource lendRequest:amount
													toLoaner:@"InvestmentClient"];
			if (result)
			{
				NSLog(@"The loan application was accepted");
				return YES;
			}
		}
	}
	return NO;
}

- (void) findLoan2:(float)amount
{
	if ([self.loanSource canLend:amount])
	{
		BOOL result = [self.loanSource lendRequest:amount
										  toLoaner:@"InvestmentClient"];
		if (result)
		{
			NSLog(@"The loan application was accepted");
		}
	}
}

@end

@interface AccreditedLoanSource  : NSObject <MoneyLender> {
	
}

//- (BOOL) canLend:(float)amount;

//- (BOOL) lendRequest:(float)value toLoaner:(NSString*)loanerId;

// other methods here

@end

@implementation AccreditedLoanSource

- (BOOL) canLend:(float)amount
{
	return YES;
}

- (BOOL) lendRequest:(float)value toLoaner:(NSString*)loanerId
{
	return YES;
}

@end


@interface MyLoanSource : NSObject

- (BOOL) canLend:(float)amount;

- (BOOL) lendRequest:(float)value toLoaner:(NSString*)loanerId;

// other methods here

@end

@implementation MyLoanSource

#define MAX_LOAN 1000 * 1000

- (BOOL) canLend:(float)amount
{
	return amount < MAX_LOAN;
}

- (BOOL) lendRequest:(float)value toLoaner:(NSString*)loanerId
{
	if ([@"" isEqualToString:loanerId])
	{
		return NO;
	}
	
	if (value > MAX_LOAN)
	{
		return NO;
	}
	
	return YES;
	
}

- (void) useLoanSource2 {
	MyLoanSource *loanSource = [[MyLoanSource alloc] init];
	InvestmentAdvisor *advisor = [[InvestmentAdvisor alloc] init];
	//advisor.loanSource = loanSource;
	//BOOL res = [advisor  findLoan:10000];
	//NSLog(@"result is %d", res ? 1 : 0);
}

- (void) useLoanSource
{
	AccreditedLoanSource *loanSource = [[AccreditedLoanSource alloc] init];
	InvestmentAdvisor *advisor = [[InvestmentAdvisor alloc] init];
	advisor.loanSource = loanSource;
	BOOL res = [advisor  findLoan:10000];
	NSLog(@"result is %d", res ? 1 : 0);
	[advisor release];
	[loanSource release];
}

@end


// file: Library.h
@interface Library : NSObject
{
	// instance variables here
}
// methods here
@end

// file: Library.m
@interface Library ()

@property(retain) NSString * privateCollectionName;
@property(retain) NSNumber * numericProperty;

- (void) setValues;
- (NSArray *) getPrivateBookTitles;

@end

@implementation Library

@synthesize numericProperty = _numberOfBooks;

- (void) setValues {
	self->_privateCollectionName = @"MyLibrary"; // generated by the compiler
	self->_numberOfBooks = @1000;  // declared with @syntesize
}

- (NSArray *) getPrivateBookTitles
{
	NSArray *books = @[];
	// find books here
	return books;
}

@end

void test1();

// Loan.h
@interface Loan : NSObject
{
	double principal;
	//double interest;
}

@property(readwrite) double interest;

- (double)getMonthlyPayment;
@end


@implementation Loan

- (double) interestPerMonth {
	return self.interest/12;
}

- (double)getMonthlyPayment
{
	return principal * [self interestPerMonth];
}
@end


@interface Person1 : NSObject {
	NSString *firstName;
	NSString *lastName;
}

- (void)setFirstName:(NSString *)firstName;

- (void)setLastName:(NSString *)lastName;

- (void)printFullName;

- (void)setFirstName:(NSString *)first lastName:(NSString*)last;


@end

@implementation Person1

- (void)setFirstName:(NSString *)aFirstName {
	self->firstName = aFirstName;
}

- (void)setLastName:(NSString *)aLastName {
	lastName = aLastName;
}

- (void)printFullName {
	NSLog(@"Full name is %@ %@", self->firstName, self->lastName);
}

- (void)setFirstName:(NSString *)first lastName:(NSString*)last {
	[self setFirstName:first];
	[self setLastName:first];
}

@end

@interface Person : NSObject {
	NSString *name;
}

@property(readwrite,retain,nonatomic) NSString *name;

@end

@implementation Person

@synthesize name = name;

@end


@implementation AppDelegate

- (void)useProperty:(NSString*) newName {
	Person *myPerson = [[Person alloc] init];
	myPerson.name = @"new property value";
}

- (void)readProperty:(NSString*) newName
{
	Person *myPerson = [[Person alloc] init];
	myPerson.name = @"new property value";
	NSLog(@"The name is now: %@", myPerson.name);
}

- (void)dealloc
{
    [super dealloc];
}

void printstr(NSString *message) {
	[message length];
}

NSString *copyString(NSString *string) {
	NSString *copy = [NSString stringWithString:string];
	return copy;
}

NSString *stringFromCArray(const char *text)
{
	return [NSString stringWithUTF8String:text];
}

void printsubstr() {
	NSString *text = @"My Example String";
	NSString *substr = [text substringToIndex:5];
	NSLog(@"substring is %@", substr);
}

NSArray *createArray() {
	NSMutableArray *array = [[NSMutableArray alloc] init];
	for (int i=0; i<3; ++i) {
		NSNumber *number = [[NSNumber alloc] initWithInt: i+1];
		[array addObject:number];
	}
	return array;
}

void printMessage(NSString *text) {
	NSUInteger len = [text length];
	NSLog(@"Message length is %d", (int)len);
}

NSString *replaceOne(NSString *myString) {
	return [myString stringByReplacingOccurrencesOfString:@"1" withString:@"one"];
}

- (void) testSecurityMethods {
	SecurityProxy *sp = [[[SecurityProxy alloc] init] autorelease];
	sp.mortgageSec = [[[MortgageSecurity alloc] init] autorelease];
	sp.fixIncomeSec = [[[FixedIncomeSecurity alloc] init] autorelease];

	// this method is defined at compilation time
	BOOL res = [sp respondsToSelector:@selector(forwardInvocation:)];
	NSLog(@"the response is %d", res); // response is 1

	// this method is defined dynamically
	res = [sp respondsToSelector:@selector(calculateEquivalentBond)];
	NSLog(@"the response is %d", res); // response is 1
}

- (void) testUseImp
{
	UseIMP *useImp = [[[UseIMP alloc] init] autorelease];
	[useImp callWithImplementation];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	//NSLog(@"I am here");
	//printMessage(@"sdfsfd");
	//void accessWithNewSyntax();
	//accessWithNewSyntax();
	//printsubstr();
	//NSNumber *a = @4444444;
	//NSLog(@"Int value is %c", [a charValue]);
	//test1();
	
	//[[MyLoanSource new] useLoanSource];
	
	
	//NSLog(@"reverse: %@", [@"My String" reverse]);
	// this prints: "reverse: gnirtS yM"
	//Blocks *blocks = [[Blocks alloc] init];
	//[blocks sortArray];

	//[self testSecurityMethods];

	//UseIMP *useImp = [[[UseIMP alloc] init] autorelease];
	//[useImp callWithImplementation];

	//[KVSample accessData];
	//[KVStructSample accessData];

	//[Bank accessBankData];

	//[BankPayrool useBankPayroll];

	//[FileReader readTest];
	//[FileWriter writeTest];


	//[ReadBinaryData testRead];

	//[[AsyncDataReader testRead] retain];

	[[AsyncDataWriter testWrite] retain];
}


@end

@interface SimpleObject2  : NSObject

-(void) printText:(NSString *)message;
@end

@implementation SimpleObject2
-(void) printText:(NSString *)message
{
	NSLog(@"message is: %@", message);
}

+ (void) classtest {
	id a = self;
	NSLog(@"val : %@", a);
}

@end

void printTextExample()
{
	SimpleObject2 *obj = [[SimpleObject2 alloc] init];
	[obj printText:@"My message"];
}

@interface Cash : NSObject {
	double quantity;
	NSString *currency;
}

@end

@implementation Cash

- (id)init {
    self = [super init];
    if (self) {
        currency = @"USD";
    }
    return self;
}

@end


void createSimpleArray() {
	NSArray *a0 = [[NSArray alloc] init];
	
	NSArray *a1 = [a0 arrayByAddingObject:@"My First Object"];
	NSArray *a2 = [a1 arrayByAddingObject:@"My Second Object"];
	
	NSLog(@"The size of the array is %d", (int)[a2 count]);
}

void createSimpleArray2() {
	NSArray *array = [[NSArray alloc] initWithObjects:
					  @"My First Object",
					   @"My Second Object", nil];
	NSLog(@"The size of the array is %d", (int)[array count]);
}

void createSimpleArray3()
{
	NSArray *array = [NSArray arrayWithObjects:
					  @"My First Object",
					  @"My Second Object", nil];
	NSLog(@"The size of the array is %d", (int)[array count]);
}

void createSimpleArray4()
{
	NSArray *array = [NSArray arrayWithObject:
					  @"My Single Object"];
	NSLog(@"The size of the array is %d", (int)[array count]);
}

void createArrayAndCopy()
{
	NSArray *array = [NSArray arrayWithObjects:
					  @"My First Object",
					  @"My Second Object", nil];
	NSLog(@"The size of the array is %d", (int)[array count]);
	NSArray *copy = [NSArray arrayWithArray:array];
	NSLog(@"The size of the copy array is also %d", (int)[copy count]);
}

void createArrayWithCArray()
{
	NSString *orig_array[] = { @"Obj1", @"Obj2" };
	NSArray *array = [NSArray arrayWithObjects:orig_array count:2];
	NSLog(@"The size of the array is %d", (int)[array count]);
}

void createArrayWithDiffferentObjects()
{
	NSNumber *num1 = [NSNumber numberWithInt:42];
	NSArray *array = [NSArray arrayWithObjects:num1, @"str2", nil];
	NSLog(@"The size of the array is %d", (int)[array count]);
}

void checkClass()
{
	NSNumber *num1 = [NSNumber numberWithInt:42];
	if ([num1 class] == [NSNumber class]) {
		NSLog(@"This is a NSNumber");
	}
	else
	{
		NSLog(@"This is not a NSNumber");
	}
}

void checkClass2()
{
	NSNumber *num1 = [NSNumber numberWithInt:42];
	if ([[num1 class] isSubclassOfClass: [NSNumber class]]) {
		NSLog(@"This is a NSNumber");
	}
	else
	{
		NSLog(@"This is not a NSNumber");
	}
}

void createArrayWithNewSyntax()
{
	NSArray *array = @[@"obj1", @"obj2" ];
	NSLog(@"The size of the array is %d", (int)[array count]);
}

void accessArrayData()
{
	NSArray *array = @[@"obj1", @"obj2" ];
	NSLog(@"The second element of the array is %@", [array objectAtIndex:1]);
}

void accessLastElement()
{
	NSArray *array = @[@"obj1", @"obj2" ];
	NSLog(@"The second element of the array is %@", [array lastObject]);
}

void getIndexOfElement()
{
	NSString *secondObj = @"obj2";
	NSArray *array = @[@"obj1", secondObj, @"obj3" ];
	int position = (int)[array indexOfObject:secondObj];
	NSLog(@"The index of the second element is %d", position);
}

void accessWithNewSyntax()
{
	NSArray *array = @[@"obj1", @"obj2" ];
	NSLog(@"The second element of the array is %@", array[1]);
}

void createMutableArray()
{
	NSMutableArray *array = [NSMutableArray arrayWithObjects:
							 @"My First Object",
							 @"My Second Object", nil];
	NSLog(@"The second element of the array is %@", [array objectAtIndex:1]);
}

void addElementsToArray()
{
	NSMutableArray *array = [[NSMutableArray alloc] init];
	[array addObject: @"My First Object"];
	[array addObject: @"My Second Object"];
	NSLog(@"The second element of the array is %@", [array objectAtIndex:1]);
}

void addAndRemoveArrayElements()
{
	NSMutableArray *array = [[NSMutableArray alloc] init];
	[array addObject: @"My First Object"];
	[array addObject: @"My Second Object"];
	NSLog(@"The second element of the array is %@", [array objectAtIndex:1]);
	[array removeObjectAtIndex:1];
	NSLog(@"The array now has %d elements", (int)[array count]);
}

void enqueue(NSMutableArray *array, id object)
{
	[array addObject: object];
}

id dequeue(NSMutableArray *array)
{
	id element = [array lastObject];
	[array removeLastObject];
	return element;	
}

void createDictionary()
{
	NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:
						  @"first", @"one", @"second", @"two", @"third", @"three", nil];
	NSLog(@"The number of elements in the dictionary is %d", (int)[dict count]);
	
}


void createDictionaryFromArrays()
{
	NSArray *values = [NSArray arrayWithObjects:@"first", @"second", @"third", nil];
	NSArray *keys = [NSArray arrayWithObjects:@"one", @"two", @"three", nil];
	
	NSDictionary *dict = [[NSDictionary alloc] initWithObjects:values forKeys:keys];
	NSLog(@"The number of elements in the dictionary is %d", (int)[dict count]);
	
}



void createDictionaryWithNewSyntax()
{
	
	NSDictionary *dict = @{ @"one": @"first", @"two" : @"second", @"three" : @"third" };
	NSLog(@"The number of elements in the dictionary is %d", (int)[dict count]);
}

void retrivedDictionaryElement()
{
	
	NSDictionary *dict = @{ @"one": @"first", @"two" : @"second", @"three" : @"third" };
	NSLog(@"The number of elements in the dictionary is %d", (int)[dict count]);
	
	NSLog(@"The element associated to two is %@", [dict objectForKey:@"two"]);
}

void retrieveSetElementSet()
{
	NSDictionary *dict = @{ @"one": @"first", @"two" : @"second", @"three" : @"third" };
	
	
	NSArray *objects = [dict objectsForKeys:@[@"two", @"three"] notFoundMarker:[NSNull null]];
	NSLog(@"The number of object found is %d", (int)[objects count]);	
}

void createString()
{
	NSString *myStr = [[NSString alloc] initWithCString:"my original string"
											   encoding:NSASCIIStringEncoding];
	NSLog(@"the string is %@", myStr);
}


BOOL compareString()
{
	NSString *myStr = [[NSString alloc] initWithCString:"my original string"
											   encoding:NSASCIIStringEncoding];
	return [myStr characterAtIndex:4] == 'r';
}


BOOL stringsEqual(NSString *a, NSString *b)
{
	NSUInteger n1 = [a length];
	NSUInteger n2 = [b length];
	
	if (n1 != n2)
	{
		return NO;
	}
	
	for (int i=0; i<n1; ++i)
	{
		if ([a characterAtIndex:i] != [b characterAtIndex:i])
		{
			return NO;
		}
	}
	return YES;
}
			

void compareStrings(NSString *a, NSString *b)
{
	NSComparisonResult res = [a compare:b];
	if (res == NSOrderedAscending)
	{
		NSLog(@"String %@ comes before %@", a, b);
	}
	else if (res == NSOrderedDescending)
	{
		NSLog(@"String %@ comes before %@", b, a);
	}
	else
	{
		NSLog(@"The strings are identical");
	}
}

void initialSubstring()
{
	NSString *original = @"Original string";
	NSString *partial = [original substringToIndex:4];
	NSLog(@"The partial string is %@", partial);
}

BOOL isPluralWord(NSString *word)
{
	NSUInteger length = [word length];
	NSUInteger initialPosition = length - 2;
	NSString *suffix = [word substringFromIndex:initialPosition];
	return [suffix isEqualToString:@"s"];
}

NSString *removeQuotes(NSString *str)
{
	int len = (int)[str length];
	if (len < 2)
	{
		return @"";
	}
	NSRange range = NSMakeRange(1, len-2);
	return [str substringWithRange:range];
}

void retrieveKeys()
{
	NSDictionary *dict = @{ @"one": @"first", @"two" : @"second", @"three" : @"third" };
	
	
	NSArray *keys = [dict allKeys];
	NSLog(@"The number of keys in the dictionary is %d", (int)[keys count]);
}

void findIngredientsForCake(NSDictionary *ingredientDictionary)
{

	NSArray *ingredients = [ingredientDictionary allKeysForObject:@"cake"];
	NSUInteger size = [ingredients count];
	
	NSLog(@"The number of ingredients for cake is %d", (int)size);
	for (int i=0; i<size; ++i)
	{
		NSLog(@"cake ingredient: %@", [ingredients objectAtIndex:i]);
	}
	
}

void enumerateDictionaryObjects()
{
	NSDictionary *dict = @{ @"one": @"first", @"two" : @"second", @"three" : @"third" };
	
	NSEnumerator *objects = [dict objectEnumerator];
	id obj;
	while ((obj = [objects nextObject])) {
		NSLog(@"The dictionary contains object %@", obj);
	}	
}

void enumerateDictionaryKeys()
{
	NSDictionary *dict = @{ @"one": @"first", @"two" : @"second", @"three" : @"third" };
	
	NSEnumerator *keys = [dict keyEnumerator];
	id key;
	while ((key = [keys nextObject])) {
		NSLog(@"The dictionary contains key %@", key);
		NSLog(@"The corresponding object is %@", [dict objectForKey:key]);
	}
}

@interface MyTest : NSObject
@end

@implementation  MyTest

- (void) createNumbers {
	int aInt = 1;
	long aLong = 23456;
	double aDouble = 3.14;
	BOOL aBool = YES;
	char aChar = 'A';
	
	// here are the corresponding NSNumber objects
	NSNumber *objInt = [[NSNumber alloc] initWithInt:aInt];
	NSNumber *objLong = [[NSNumber alloc] initWithLong:aLong];
	NSNumber *objDouble = [[NSNumber alloc] initWithDouble:aDouble];
	NSNumber *objBool = [[NSNumber alloc] initWithBool:aBool];
	NSNumber *objChar = [[NSNumber alloc] initWithChar:aChar];
	NSLog(@"Here are the values: %@, %@, %@, %@, %@ ",
		  objInt, objLong, objDouble, objBool, objChar);
}

- (void) createNumbers2 {
	int aInt = 1;
	long aLong = 23456;
	double aDouble = 3.14;
	BOOL aBool = YES;
	char aChar = 'A';
	
	// here are the corresponding NSNumber objects
	NSNumber *objInt = [NSNumber numberWithInt:aInt];
	NSNumber *objLong = [NSNumber numberWithLong:aLong];
	NSNumber *objDouble = [NSNumber numberWithDouble:aDouble];
	NSNumber *objBool = [NSNumber numberWithBool:aBool];
	NSNumber *objChar = [NSNumber numberWithChar:aChar];
	NSLog(@"Here are the values: %@, %@, %@, %@, %@ ",
		  objInt, objLong, objDouble, objBool, objChar);
}

- (void) createNumbers3
{
	NSNumber *objInt =  @1;
	NSNumber *objLong = @23456;
	NSNumber *objDouble = @3.14;
	NSNumber *objBool = @YES;
	NSNumber *objChar = @'A';
	NSLog(@"Here are the values: %@, %@, %@, %@, %@ ",
		  objInt, objLong, objDouble, objBool, objChar);
}

- (void) accessNumberValue
{
	NSNumber *objInt =  @1;
	NSNumber *objLong = @23456;
	NSNumber *objDouble = @3.14;
	NSNumber *objBool = @YES;
	NSNumber *objChar = @'A';
	NSLog(@"Here are the values: %d, %ld, %lf, %d, %c ",
		  (int)[objInt integerValue],
		  [objLong longValue],
		  [objDouble doubleValue],
		  [objBool boolValue],
		  [objChar charValue]);
}

- (void) myDict
{
	NSDictionary *dict = @{ @"a" : @"b", @"c" : @"d" };
	[dict objectForKey:@"a"];
}


- (void) enumerateDictionaryObjects
{
	NSDictionary *dict = @{ @"one": @"first", @"two" : @"second", @"three" : @"third" };
	
	for (NSString *key in dict)
	{
		NSLog(@"The dictionary contains key %@ and value %@",
			  key, [dict key]);
	}
}

- (void) changeDictionary
{
	NSDictionary *immutable_dict = @{ @"one": @"first", @"two" : @"second", @"three" : @"third" };
	
	NSMutableDictionary *dict = [NSMutableDictionary
										 dictionaryWithDictionary:immutable_dict];
	
	[dict setObject:@"fourth" forKey:@"four"];
	[dict setObject:@"fifth"  forKey:@"five"];
	
	for (NSString *key in dict)
	{
		NSLog(@"The dictionary contains key %@ and value %@",
			  key, [dict objectForKey:key]);
	}
	
	[dict removeObjectForKey:@"one"];
}

- (void) deleteFromDictionary
{
	NSDictionary *immutable_dict =
	@{ @"one": @"first", @"two" : @"second", @"three" : @"third" };
	
	NSMutableDictionary *dict = [NSMutableDictionary
								 dictionaryWithDictionary:immutable_dict];
	
	[dict setObject:@"fourth" forKey:@"four"];
	[dict setObject:@"fifth"  forKey:@"five"];
	
	for (NSString *key in dict)
	{
		NSLog(@"The dictionary contains key %@ and value %@",
			  key, [dict objectForKey:key]);
	}
	
	NSArray *keys_to_delete = @[ @"two", @"three" ];
	[dict removeObjectsForKeys:keys_to_delete];
	
	for (NSString *key in dict)
	{
		NSLog(@"The dictionary still contains key %@ and value %@",
			  key, [dict objectForKey:key]);
	}
}

void test1() {
	[[MyTest new] deleteFromDictionary];
}

@end

@interface Person2 : NSObject

@property(readwrite,retain,nonatomic) NSString *name;

+ (void) kkk;

@end

@implementation Person2

+ (void) kkk {
}

- (void) useName {
	NSLog(@"name is %@", _name);
}

- (void) compare:(NSString *)a :(NSString*) b {
	
}

- (void) use {
	[self compare:@"ss":@"bbb"];
}

@end















