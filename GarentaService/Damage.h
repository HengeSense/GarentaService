//
//  Damage.h
//  GarentaService
//
//  Created by Alp Keser on 10/21/13.
//  Copyright (c) 2013 Alp Keser. All rights reserved.
//Hasar classi

#import <Foundation/Foundation.h>

@interface Damage : NSObject
@property(nonatomic,retain)NSString *damageCode;
@property(nonatomic,retain)NSString *damageLocation;
@property(nonatomic,assign)int damageLevel;

@end
