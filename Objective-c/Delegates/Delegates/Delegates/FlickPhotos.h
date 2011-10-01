//
//  FlickPhotos.h
//  Delegates
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlickrFetcherProtocol.h"

@interface FlickPhotos : NSObject <FlickrFetcherProtocol> {
    
}

- (void)start;

@end
