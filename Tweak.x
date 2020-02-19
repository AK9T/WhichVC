#include <UIKit/UIKit.h>
#import "RKDropdownAlert.h"

%hook UIViewController

NSString *playerName;
NSString *myString = @"The name of vc is: ";
NSString *test = @"";

-(void)viewDidLoad {

static dispatch_once_t once;
dispatch_once(&once, ^ {
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Test Title"
message:@"Test Message" delegate:nil cancelButtonTitle:@"Close Test Pop-Up"
otherButtonTitles:nil];
[alert show];
});

   playerName = NSStringFromClass([self class]);
    test = [myString stringByAppendingString: playerName];
   dispatch_async(dispatch_get_main_queue(), ^(void){
     [RKDropdownAlert title:@"Class Name" message: test backgroundColor:[UIColor colorWithRed:0.0f/255.0f
                                                                                       green:0.0f/255.0f
                                                                                        blue:0.0f/255.0f
                                                                                       alpha:1.0f] textColor:[UIColor whiteColor] time:10];
    });

  %orig;
}

%end