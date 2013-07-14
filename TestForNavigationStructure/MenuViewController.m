//
//  MenuViewController.m
//  TestForNavigationStructure
//
//  Created by Nono Martínez Alonso on 13/07/13.
//  Copyright (c) 2013 Nono Martínez Alonso. All rights reserved.
//  Twitter: @nonoesp

#import "MenuViewController.h"
#import "CustomViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.navigationItem.title = @"Main Menu";
        
        // Button for View Controller A        
        UIButton *menuButtonA = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height/2)];
        menuButtonA.backgroundColor = [UIColor colorWithRed:(80.0/255.0) green:(240/255.0) blue:(130/255.0) alpha:1.0];
        [menuButtonA addTarget:self action:@selector(pushViewControllerA:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:menuButtonA];
        
        // Button for View Controller B
        UIButton *menuButtonB = [[UIButton alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/2, self.view.frame.size.width, self.view.frame.size.height/2)];
        menuButtonB.backgroundColor = [UIColor colorWithRed:(250/255.0) green:(120/255.0) blue:(50/255.0) alpha:1];
        [menuButtonB addTarget:self action:@selector(pushViewControllerB:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:menuButtonB];
    }
    return self;
}

// Both controllers initialize CustomViewController. Could be different

-(void)pushViewControllerA:(id)sender {
    CustomViewController *customViewController = [[CustomViewController alloc] initWithNibName:nil bundle:nil];
    customViewController.view.backgroundColor = [UIColor colorWithRed:(80.0/255.0) green:(240/255.0) blue:(130/255.0) alpha:1.0];
    customViewController.navigationItem.title = @"View Controller A";
    [self.navigationController pushViewController:customViewController animated:YES];
}

-(void)pushViewControllerB:(id)sender {
    CustomViewController *customViewController = [[CustomViewController alloc] initWithNibName:nil bundle:nil];
    customViewController.view.backgroundColor = [UIColor colorWithRed:(250/255.0) green:(120/255.0) blue:(50/255.0) alpha:1];
    customViewController.navigationItem.title = @"View Controller B";    
    [self.navigationController pushViewController:customViewController animated:YES];
}




@end
