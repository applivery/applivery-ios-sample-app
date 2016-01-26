//
//  AppDelegate.m
//  AppliveryDemoObjC
//
//  Created by Alejandro Jiménez on 26/1/16.
//  Copyright © 2016 Applivery S.L. All rights reserved.
//

#import "AppDelegate.h"

@import Applivery;


@interface AppDelegate ()

@end


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	Applivery *applivery = [Applivery sharedInstance];
	applivery.logLevel = LogLevelInfo;
	[applivery startWithApiKey:@"YOUR_API_KEY" appId:@"YOUR_APP_ID" appStoreRelease:NO];
	
	return YES;
}


@end
