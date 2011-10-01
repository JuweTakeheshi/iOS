//
//  main.m
//  AngryBirds
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RedBird.h"
#import "YellowBird.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    RedBird * redBird = [[RedBird alloc] init];
    
    NSString * poder = [[NSString alloc] initWithFormat:@"Pegar"];
    
    [redBird setPoder:poder];
    [redBird poder];

    
    [poder release];
    
    RedBird * redBird1 = [[RedBird alloc] init];
    RedBird * redBird2 = [[RedBird alloc] init];
    RedBird * redBird3 = [[RedBird alloc] init];
    RedBird * redBird4 = [[RedBird alloc] init];
    
    NSMutableArray * birdList = [[NSMutableArray alloc] init];
    
    [birdList addObject:redBird1];
    [redBird1 release];    
    
    [birdList addObject:redBird2];
    [redBird2 release];
    
    [birdList addObject:redBird3];
    [redBird3 release];
    
    [birdList addObject:redBird4];
    [redBird4 release];
    
    //..... Matan 3 - 4 cerdos
    //.... Uno sale para atras
    
    [birdList release];
    
    [pool drain];
    
    
     YellowBird * bird = [[YellowBird alloc] init];
     
     [bird poder];
     [bird setPoder:@"Kamikaze"];
     
     
    return 0;
}

