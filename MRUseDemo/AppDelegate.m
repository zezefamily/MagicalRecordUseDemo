//
//  AppDelegate.m
//  MRUseDemo
//
//  Created by zezefamily on 15/7/27.
//  Copyright (c) 2015年 zezefamily. All rights reserved.

//  更多详细讲解 zezefamily.Inc
//  http://blog.csdn.net/kuizhang1/article/details/21200367

#import "AppDelegate.h"
#import "Person.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [MagicalRecord setupCoreDataStackWithStoreNamed:@"Model.sqlite"];
    
    for(int i = 0;i<10;i++){
        
//      插入数据
        Person *person = [Person MR_createEntity];
        person.fristname = [NSString stringWithFormat:@"Guo%d",i];
        person.lastname = [NSString stringWithFormat:@"zeze%d",i];
        person.age = [NSNumber numberWithInt:i];
        
        [[NSManagedObjectContext MR_defaultContext]MR_saveWithBlock:^(NSManagedObjectContext *localContext) {
            
        }];
    }
    
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
