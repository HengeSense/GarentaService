/**
 *  GarentaServiceAppDelegate.h
 *  GarentaService
 *
 *  Created by Alp Keser on 10/2/13.
 *  Copyright Alp Keser 2013. All rights reserved.
 */

#import <UIKit/UIKit.h>
#import "CC3UIViewController.h"

@interface GarentaServiceAppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow* _window;
	CC3DeviceCameraOverlayUIViewController* _viewController;
}
@end
