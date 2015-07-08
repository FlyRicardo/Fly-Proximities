//
//  AppDelegate.h
//  Fly Proximities
//
//  Created by Fly on 5/11/15.
//  Copyright (c) 2015 ___FlyInc___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EstimoteSDK/EstimoteSDK.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *mainNavigation;
@property (strong, nonatomic) ESTCloudManager *cloudManager;

@end

