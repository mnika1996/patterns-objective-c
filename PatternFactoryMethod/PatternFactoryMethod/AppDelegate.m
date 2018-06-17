//
//  AppDelegate.m
//  PatternFactoryMethod
//
//  Created by Veronika Makarovskaya on 17.06.2018.
//  Copyright © 2018 Вероника. All rights reserved.
//


#import "AppDelegate.h"
#import "ViewControllerWithFactory.h"


@interface AppDelegate ()

@property(nonatomic, strong) UINavigationController *navigationController;

@end


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UIViewController *viewController = [ViewControllerWithFactory new];
    self.navigationController = [[UINavigationController alloc] initWithRootViewController: viewController];
    self.window = [UIWindow new];
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
