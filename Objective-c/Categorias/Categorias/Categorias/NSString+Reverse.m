//
//  NSString+Reverse.m
//  Categorias
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "NSString+Reverse.h"

@implementation NSString (Reverse)

- (NSString *)reversedString {
    
    NSMutableString * reversedString;
    
    int lenght = [self length] -1;
    
    reversedString = [[NSMutableString alloc] init];
    
    while(lenght >= 0) {
        
        [reversedString appendString:[NSString stringWithFormat:@"%c", [self characterAtIndex:lenght]]];
        
        lenght--;
    }
    
    [reversedString autorelease];
    
    return reversedString;
}

@end
