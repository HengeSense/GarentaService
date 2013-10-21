//
//  ViewController.m
//  GarentaService
//
//  Created by Alp Keser on 10/11/13.
//  Copyright (c) 2013 Alp Keser. All rights reserved.
//

#import "LoginVC.h"

@interface LoginVC ()

@end

@implementation LoginVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)login{
    //splitviewcode
    UISplitViewController *splitViewController = [[UISplitViewController alloc] init];
    MasterVC *masterViewController = [[MasterVC alloc] init];
    DetailVC *detailViewController = [[DetailVC alloc] init];
    [masterViewController setDelegate:detailViewController];
    UINavigationController *navVC =[[UINavigationController alloc] initWithRootViewController:detailViewController];
    UINavigationController *masterNavVC =[[UINavigationController alloc] initWithRootViewController:masterViewController];
    [splitViewController setViewControllers:[NSArray arrayWithObjects:masterNavVC,navVC, nil]];
    
    [[[[UIApplication sharedApplication] delegate] window] setRootViewController:splitViewController];
}

@end
