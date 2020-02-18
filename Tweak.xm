#include <UIKit/UIKit.h>

%hook UIViewController

-(void)viewDidLoad {
UIAlertView*alert =[[UIAlertView alloc] initWithTitle:@"Header Textline" message:@"Message"
delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];  
[alert show];
[alert release];
}

%end