/**
 *  GarentaServiceAppDelegate.m
 *  GarentaService
 *
 *  Created by Alp Keser on 10/2/13.
 *  Copyright Alp Keser 2013. All rights reserved.
 */

#import "GarentaServiceAppDelegate.h"
#import "GarentaServiceLayer.h"
#import "GarentaServiceScene.h"
#import "CC3CC2Extensions.h"

#define kAnimationFrameRate		60		// Animation frame rate

@implementation GarentaServiceAppDelegate

-(void) dealloc {
	[_window release];
	[_viewController release];
	[super dealloc];
}



-(void) establishDirectorController {
	_viewController = CC3DeviceCameraOverlayUIViewController.sharedDirector;
	_viewController.supportedInterfaceOrientations = UIInterfaceOrientationMaskAll;
	_viewController.viewShouldUseStencilBuffer = NO;		// Set to YES if using shadow volumes
	_viewController.viewPixelSamples = 1;					// Set to 4 for antialiasing multisampling
	_viewController.animationInterval = (1.0f / kAnimationFrameRate);
	_viewController.displayStats = YES;
	[_viewController enableRetinaDisplay: YES];
}

-(void) applicationDidFinishLaunching: (UIApplication*) application  {
    [self establishDirectorController];
    
        self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    LoginVC *loginVC = [[LoginVC alloc] init];
    [self.window setRootViewController:loginVC];
    [self.window makeKeyAndVisible];
    
}

/** Pause the cocos3d/cocos2d action. */
-(void) applicationWillResignActive: (UIApplication*) application {
	[CCDirector.sharedDirector pause];
}

/** Resume the cocos3d/cocos2d action. */
-(void) resumeApp { [CCDirector.sharedDirector resume]; }

-(void) applicationDidBecomeActive: (UIApplication*) application {
	
	// Workaround to fix the issue of drop to 40fps on iOS4.X on app resume.
	// Adds short delay before resuming the app.
	[NSTimer scheduledTimerWithTimeInterval: 0.5f
									 target: self
								   selector: @selector(resumeApp)
								   userInfo: nil
									repeats: NO];
	
	// If dropping to 40fps is not an issue, remove above, and uncomment the following to avoid delay.
//	[self resumeApp];
}

-(void) applicationDidReceiveMemoryWarning: (UIApplication*) application {
	[CCDirector.sharedDirector purgeCachedData];
}

-(void) applicationDidEnterBackground: (UIApplication*) application {
	[CCDirector.sharedDirector stopAnimation];
}

-(void) applicationWillEnterForeground: (UIApplication*) application {
	[CCDirector.sharedDirector startAnimation];
}

-(void)applicationWillTerminate: (UIApplication*) application {
	[CCDirector.sharedDirector.view removeFromSuperview];
	[CCDirector.sharedDirector end];
}

-(void) applicationSignificantTimeChange: (UIApplication*) application {
	[CCDirector.sharedDirector setNextDeltaTimeZero: YES];
}

@end
