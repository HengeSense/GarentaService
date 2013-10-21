//
//  Car.h
//  GarentaService
//
//  Created by Alp Keser on 10/21/13.
//  Copyright (c) 2013 Alp Keser. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property(nonatomic,retain)NSString *chassisNumber;
@property(nonatomic,retain)NSString *licenseNumber;
@property(nonatomic,retain)NSMutableArray *damages;
@property(nonatomic,assign)int km;
@property(nonatomic,assign)int year;
@end
