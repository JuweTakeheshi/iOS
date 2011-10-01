//
//  Leak.m
//  MemoryLeak
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Leak.h"

@implementation Leak

- (id)init {
    self = [super init];
    if (self) {
        
        mutable = [[NSMutableString alloc] init];
        
        [mutable appendFormat:@"hola"];
        [mutable appendFormat:@"mundo"];
        
        
        
    }
    return self;
}

- (void)dealloc {
    
    [mutable release];
    
    [super dealloc];
}
@end
