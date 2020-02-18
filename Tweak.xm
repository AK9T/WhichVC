#include <UIKit/UIKit.h>

@interface UIViewController 
@end

%hook UIViewController

-(void)viewDidLoad {
UIAlertView*alert =[[UIAlertView alloc] initWithTitle:@"Header Textline" message:@"Message"
delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];  
[alert show];
%orig();
}

%end