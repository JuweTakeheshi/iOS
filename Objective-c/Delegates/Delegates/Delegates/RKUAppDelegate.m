//
//  RKUAppDelegate.m
//  Delegates
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "RKUAppDelegate.h"
#import "FlickPhotos.h"

@implementation RKUAppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    FlickPhotos * photos = [[FlickPhotos alloc] init];
    
    [photos start];
}

@end
