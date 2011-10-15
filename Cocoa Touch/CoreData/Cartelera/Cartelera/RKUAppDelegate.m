//
//  RKUAppDelegate.m
//  Cartelera
//
//  Created by Juan Jose Karam on 10/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "RKUAppDelegate.h"

#import "RKUMasterViewController.h"

@implementation RKUAppDelegate

@synthesize window = _window;
@synthesize navigationController = _navigationController;

- (void)dealloc
{
    [_window release];
    [_navigationController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [self initializeManagedObjectModel];
    [self initializePersistanceStoreCoordinator];
    [self initializeManagedObjectContext];
    
    
    
//    [[self.navigationController.viewControllers objectAtIndex:0] setContext:managedObjectContext];
    
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.

    RKUMasterViewController *masterViewController = [[[RKUMasterViewController alloc] initWithNibName:@"RKUMasterViewController" bundle:nil] autorelease];
    
    masterViewController.context = managedObjectContext;
    
    
    self.navigationController = [[[UINavigationController alloc] initWithRootViewController:masterViewController] autorelease];
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
    return YES;
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
    NSError * error;
    
    if(![managedObjectContext save:&error]){
        NSLog(@"No puedo guardar");
    }
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


- (void)initializeManagedObjectModel {
    
    if(!managedObjectModel) {
     
        NSURL * url = [[NSBundle mainBundle] URLForResource:@"Cartelera" withExtension:@"momd"];
        
        managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:url];
    }
}


- (NSURL *)applicationDirectory {
    
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (void)initializePersistanceStoreCoordinator {
    
    if(!persistanceStoreCoordinator) {
        NSURL * storeURL  = [[self applicationDirectory] URLByAppendingPathComponent:@"Cartelera.sqlite"];
        
        
        NSError * error = nil;
        
        persistanceStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:managedObjectModel];
        
        
        if(![persistanceStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType
                                                      configuration:nil URL:storeURL options:nil error:&error]){
            
            NSLog(@"Ya valio no puedo escribir en el sistema de archivos");
            abort();
        }
    }
    
}

- (void)initializeManagedObjectContext {
    
    if(!managedObjectContext) {
        
        managedObjectContext = [[NSManagedObjectContext alloc] init];
        [managedObjectContext setPersistentStoreCoordinator:persistanceStoreCoordinator];
    }
}

@end
