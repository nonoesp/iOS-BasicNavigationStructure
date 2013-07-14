//
//  AppDelegate.m
//  TestForNavigationStructure
//
//  Created by Nono Martínez Alonso on 13/07/13.
//  Copyright (c) 2013 Nono Martínez Alonso. All rights reserved.
//  Twitter: @nonoesp

/*  
 *  BasicNavigationController
 *
 *  Structure for:
 *
 *  - Show a custom landing MenuViewController
 *  - Provide navigation through custom ViewControllers
*/

#import "AppDelegate.h"
#import "MenuViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    MenuViewController *menuViewController = [[MenuViewController alloc] initWithNibName:nil bundle:nil];
    
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:menuViewController];
    navigationController.delegate = self;
    [navigationController setNavigationBarHidden:YES];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = navigationController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

-(void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if([NSStringFromClass([viewController class]) isEqualToString:@"MenuViewController"]){

    } else {
        [navigationController setNavigationBarHidden:NO animated:YES];
    }
}

-(void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if([NSStringFromClass([viewController class]) isEqualToString:@"MenuViewController"]){
        [navigationController setNavigationBarHidden:YES animated:YES];        
    }
}

@end
