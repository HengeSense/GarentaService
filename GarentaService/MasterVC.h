//
//  EBMasterViewController.h
//  EfesBayi
//
//  Created by alp keser on 4/11/13.
//  Copyright (c) 2013 alp keser. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuSelectedDelegate.h"
#import "ApplicationProperties.h"
@interface MasterVC : UITableViewController


@property (nonatomic, assign) id<EBMenuSelectedDelegate> delegate;
@property (nonatomic,retain) NSArray *mainMenu;
@end
