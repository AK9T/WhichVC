#include <UIKit/UIKit.h>
#import "RKDropdownAlert.h"

%hook UIViewController

NSString *playerName;
NSString *myString = @"The name of vc is: ";
NSString *test = @"";

-(void)viewDidLoad {
   playerName = NSStringFromClass([self class]);
    test = [myString stringByAppendingString: playerName];
   dispatch_async(dispatch_get_main_queue(), ^(void){
    [RKDropdownAlert title:@"Class Name" message:test backgroundColor:[UIColor yellowColor] textColor:[UIColor orangeColor] time:10];
    });

  %orig;
}

%end