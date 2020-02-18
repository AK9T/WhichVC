#include <UIKit/UIKit.h>


%hook UIViewController

-(void)viewDidLoad {
     dispatch_async(dispatch_get_main_queue(), ^(void){
UIAlertView*alert =[[UIAlertView alloc] initWithTitle:@"Header Textline" message:@"Message"
delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];  
[alert show];
%orig();
    });
}

%end