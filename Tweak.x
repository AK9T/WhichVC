#include <UIKit/UIKit.h>
#import "RKDropdownAlert.h"

%hook UIViewController


-(void)viewDidLoad {
   dispatch_async(dispatch_get_main_queue(), ^(void){
    [RKDropdownAlert title:@"RKDropdownAlert Test" message:@"Isn't this better than UIAlertView?" backgroundColor:[UIColor yellowColor] textColor:[UIColor orangeColor] time:10];
    });

  %orig;
}

%end