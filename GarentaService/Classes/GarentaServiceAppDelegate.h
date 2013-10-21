/**
 *  GarentaServiceAppDelegate.h
 *  GarentaService
 *
 *  Created by Alp Keser on 10/2/13.
 *  Copyright Alp Keser 2013. All rights reserved.
 */

#import <UIKit/UIKit.h>
#import "CC3UIViewController.h"
#import "LoginVC.h"
@interface GarentaServiceAppDelegate : UIResponder <UIApplicationDelegate> {

	CC3DeviceCameraOverlayUIViewController* _viewController;
}
@property (strong, nonatomic) UIWindow *window;
@end
