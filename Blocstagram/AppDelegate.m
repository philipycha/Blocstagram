//
//  AppDelegate.m
//  Blocstagram
//
//  Created by Philip Ha on 2016-02-21.
//  Copyright (c) 2016 Bloc. All rights reserved.
//

#import "AppDelegate.h"
#import "ImagesTableViewController.h"
#import "LoginViewController.h"
#import "DataSource.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [DataSource sharedInstance]; // create the data source (so it can receive the access token notification)
    
    UINavigationController *navVC = [[UINavigationController alloc] init];
    LoginViewController *loginVC = [[LoginViewController alloc] init];
    [navVC setViewControllers:@[loginVC] animated:YES];
    
    [[NSNotificationCenter defaultCenter] addObserverForName:LoginViewControllerDidGetAccessTokenNotification object:nil queue:nil usingBlock:^(NSNotification *note) {
        ImagesTableViewController *imagesVC = [[ImagesTableViewController alloc] init];
        [navVC setViewControllers:@[imagesVC] animated:YES];
    }];
    
    self.window.rootViewController = navVC;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
    
}


@end

