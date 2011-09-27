//
//  main.m
//  Musica
//
//  Created by Juan Jose Karam on 9/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BeatBox.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        BeatBox * beatBox = [[BeatBox alloc] init];
        [beatBox comienzaConcierto];
        
    }
    return 0;
}

