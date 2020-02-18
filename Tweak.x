#include <UIKit/UIKit.h>
#import "alerts.h"

%hook UIViewController

alerts *a;

-(void)viewDidLoad {
%orig;
}

%end