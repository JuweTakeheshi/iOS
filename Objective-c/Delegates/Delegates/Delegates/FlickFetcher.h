//
//  FlickFetcher.h
//  Delegates
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlickrFetcherProtocol.h"

@interface FlickFetcher : NSObject <NSXMLParserDelegate>{

    NSMutableArray * photos;
    
    NSMutableData * retrivedData;
    
    id<FlickrFetcherProtocol> delegate;
}

@property (nonatomic, assign) id delegate;

- (void)fetchPhotos;

@end
