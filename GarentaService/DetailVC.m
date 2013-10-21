//
//  EBDetailViewController.m
//  EfesBayi
//
//  Created by alp keser on 4/11/13.
//  Copyright (c) 2013 alp keser. All rights reserved.
//

#import "DetailVC.h"
#import "DamageManagementVCViewController.h"
@interface DetailVC ()

@end

@implementation DetailVC

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

#pragma mark - delegate methods

- (void)salesSelected{
    
}

- (void)customerRentSelected{
    DamageManagementVCViewController *damageManagementVC = [[DamageManagementVCViewController alloc] init];
    [[self navigationController] pushViewController:damageManagementVC animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
