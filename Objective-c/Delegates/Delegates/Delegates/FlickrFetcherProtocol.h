//
//  FlickrFetcherProtocol.h
//  Delegates
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FlickrFetcherProtocol <NSObject>

- (void)didRetrivePhotos:(NSArray *)photos;

- (void)didEndWithError:(NSError *) error;

@end
