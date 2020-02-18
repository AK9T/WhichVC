//
//  Goku.m
//  alertView
//
//  Created by Akshay Khamankar on 14/02/20.
//  Copyright © 2020 Akshay Khamankar. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "alerts.h"

@implementation alerts

-(void)prompt {
    dispatch_async(dispatch_get_main_queue(), ^(void){
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Prompt"
                                                                       message:@"Hello Akshay, are you sure you want to call this person?"
                                                                preferredStyle:UIAlertControllerStyleAlert]; // 1
        UIAlertAction *firstAction = [UIAlertAction actionWithTitle:@"Yes"
                                                              style:UIAlertActionStyleDestructive handler:^(UIAlertAction * action) {
                                                                  NSLog(@"calling");
                                                                  
                                                                  
                                                                  //                                                                      Goku *g = [[Goku alloc] init];
                                                                  //                                                                      [g showGokuWithView: self.view];
                                                                  
                                                                  
                                                                  
                                                                  
                                                              }]; // 2
        UIAlertAction *secondAction = [UIAlertAction actionWithTitle:@"two"
                                                               style:UIAlertActionStyleCancel handler:^(UIAlertAction * action) {
                                                                   NSLog(@"You pressed button two");
                                                               }]; // 3
        
        [alert addAction:secondAction];
        [alert addAction:firstAction];
        [self presentViewController:alert animated:YES completion:nil];
    });
}
@end
