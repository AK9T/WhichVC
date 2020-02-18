#include <UIKit/UIKit.h>
#import "RKDropdownAlert.h"

%hook UIViewController

NSString *playerName;

-(void)viewDidLoad {
   playerName = NSStringFromClass([self class]);
   dispatch_async(dispatch_get_main_queue(), ^(void){
    [RKDropdownAlert title:@"Class Name" message:@"The name of VC is %@", playerName backgroundColor:[UIColor yellowColor] textColor:[UIColor orangeColor] time:6];
    });

  %orig;
}

%end