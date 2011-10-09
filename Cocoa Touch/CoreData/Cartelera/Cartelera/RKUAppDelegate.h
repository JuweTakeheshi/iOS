//
//  RKUAppDelegate.h
//  Cartelera
//
//  Created by Juan Jose Karam on 10/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RKUAppDelegate : UIResponder <UIApplicationDelegate> 
{
    
    NSManagedObjectModel * managedObjectModel;
    
    NSPersistentStoreCoordinator * persistanceStoreCoordinator;
    
    NSManagedObjectContext * managedObjectContext;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController *navigationController;

- (void)initializeManagedObjectModel;
- (NSURL *)applicationDirectory;
- (void)initializePersistanceStoreCoordinator ;
- (void)initializeManagedObjectContext;
@end
