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
      
    if(![test  isEqual: @"UIViewController"] ||  ![test  isEqual: @"UIAlertController"] ||  ![test  isEqual: @"UISystemKeyboardDockController"] || ![test  isEqual: @"UISystemKeyboardDockController"] ||  ![test  isEqual: @"UIInputWindowController"]) {
             [RKDropdownAlert title:@"Class Name" message: test backgroundColor:[UIColor colorWithRed:0.0f/255.0f
                                                                                       green:0.0f/255.0f
                                                                                        blue:0.0f/255.0f
                                                                                       alpha:1.0f] textColor:[UIColor whiteColor] time:10];
    }

    });

    static dispatch_once_t once;
dispatch_once(&once, ^ {
   dispatch_async(dispatch_get_main_queue(), ^(void){
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Greetings"
                                                                          message:@"This is a tweak made by Akshay Khamankar for knowing the class name of current controller. It is made for educational purpose only."
                                                                   preferredStyle:UIAlertControllerStyleAlert];
                                                                           UIAlertAction *secondAction = [UIAlertAction actionWithTitle:@"Ok Thanks"
                                                               style:UIAlertActionStyleCancel handler:^(UIAlertAction * action) {
                                                               
                                                               }]; 
                                                                [alert addAction:secondAction];
     [self presentViewController:alert animated:YES completion:nil];                    
      });                                           
});

  %orig;
}

%end