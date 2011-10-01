//
//  FlickPhotos.m
//  Delegates
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "FlickPhotos.h"
#import "FlickFetcher.h"


@implementation FlickPhotos


- (void)start {
    
    FlickFetcher * fetcher = [[FlickFetcher alloc] init];
    
    [fetcher setDelegate:self];
    
    [fetcher fetchPhotos];
}

- (void)didEndWithError:(NSError *)error {
    
}

- (void)didRetrivePhotos:(NSArray *)photos {
    
    for(int i = 0; i < [photos count]; i++) {
        
        NSLog(@"%@", [photos objectAtIndex:i]);
    }
}

@end
