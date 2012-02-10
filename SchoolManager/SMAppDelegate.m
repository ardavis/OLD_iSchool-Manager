//
//  SMAppDelegate.m
//  SchoolManager
//
//  Created by Andrew Davis on 2/4/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import "SMAppDelegate.h"
#import "CourseDataController.h"
#import "SMMasterViewController.h"
#import "Course.h"

@implementation SMAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
    
    SMMasterViewController *firstViewController = (SMMasterViewController *)[[navigationController viewControllers] objectAtIndex:0];
    
    CourseDataController *aDataController = [[CourseDataController alloc] init];
    firstViewController.dataController = aDataController;
    
    
    RKClient* client = [RKClient clientWithBaseURL:@"http://school_manager.dev/"];
    NSLog(@"I am your RKClient singleton : %@", [RKClient sharedClient]);
    
    return YES;
}

- (void)loadCourse {  
    RKObjectManager* manager = [RKObjectManager objectManagerWithBaseURL:@"http://school_manager.dev/"];  
    RKObjectMapping* mapping = [RKObjectMapping mappingForClass:[Course class]];
    
    [manager loadObjectsAtResourcePath:@"/users/23/courses/" objectMapping:mapping delegate:(id)self];
    
    // Define a default resource path for all unspecified HTTP verbs  
    [manager.router routeClass:[Course class] toResourcePath:@"/contacts/(identifier)"];  
    [manager.router routeClass:[Course class] toResourcePath:@"/courses" forMethod:RKRequestMethodPOST];  
    
} 

// RKObjectLoaderDelegate methods  

- (void)objectLoader:(RKObjectLoader*)objectLoader didLoadObjects:(NSArray*)objects {  
    Course* course = [objects objectAtIndex:0];  
    NSLog(@"Loaded Course ID #%@ -> Name: %@, Number: %@", course.identifier, course.name, course.number);  
}  

- (void)objectLoader:(RKObjectLoader*)objectLoader didFailWithError:(NSError*)error {  
    NSLog(@"Encountered an error: %@", error);  
} 

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
