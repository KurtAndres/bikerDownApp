//
//  AppDelegate.h
//  BikerDown
//
//  Created by Kurt Andres on 6/16/13.
//  Copyright (c) 2013 Kurt Andres. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    CMMotionManager *motionManager;

}

@property (strong, nonatomic) UIWindow *window;
@property (readonly) CMMotionManager *motionManager;

@end
