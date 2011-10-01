//
//  main.m
//  Categorias
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Reverse.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString * string = @"hello world";
     
        // insert code here...
        NSLog(@"%@", [string reversedString]);
        
    }
    return 0;
}

