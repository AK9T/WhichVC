#include <UIKit/UIKit.h>

@interface UIViewController: UIResponder <TSPresenterType, TSPresenterType, HUItemPresentationContainer, GKContentRefresh, GKURLHandling, PXAnonymousViewController, PXDiagnosticsEnvironment, MKInfoCardThemeListener, NSExtensionRequestHandling, _UIViewServiceDeputy, UIViewControllerPresenting, _UITraitEnvironmentInternal, _UIContentContainerInternal, _UIFocusEnvironmentInternal, NSCoding, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment> 
@end

%hook UIViewController

-(void)viewDidLoad {
UIAlertView*alert =[[UIAlertView alloc] initWithTitle:@"Header Textline" message:@"Message"
delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];  
[alert show];
%orig();
}

%end