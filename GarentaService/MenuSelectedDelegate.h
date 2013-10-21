//
//  EBMenuSelectedDelegate.h
//  EfesBayi
//
//  Created by alp keser on 4/11/13.
//  Copyright (c) 2013 alp keser. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuSelectedDelegate : NSObject



@end
@protocol EBMenuSelectedDelegate

- (void)profileSelected;
- (void)salesSelected;
- (void)customerRentSelected;
@end