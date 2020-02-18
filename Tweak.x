#include <UIKit/UIKit.h>
#import "alerts.h"

%hook UIViewController

alerts *a;

-(void)viewDidLoad {
  a = [[alerts alloc] init];
  [a prompt];
  %orig;
}

%end