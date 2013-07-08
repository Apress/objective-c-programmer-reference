#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
@private
	int my_value;
@package
}

@property (assign) IBOutlet NSWindow *window;

@end
