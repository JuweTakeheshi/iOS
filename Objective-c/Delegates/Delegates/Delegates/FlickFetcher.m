//
//  FlickFetcher.m
//  Delegates
//
//  Created by Juan Jose Karam on 10/1/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "FlickFetcher.h"
#import "FlickrPhoto.h"

@implementation FlickFetcher
@synthesize delegate;

- (void)fetchPhotos {
    
    NSString * flickPhoto = @"http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=6257067082ef0f57f33b02078933cbd4&has_geo=1&lat=19.374677&lon=-99.162812&format=rest&api_sig=d17c961d5f720e51b226edbcf96b57b3";
    
    
    NSURLRequest * request = [NSURLRequest requestWithURL:[NSURL URLWithString:flickPhoto]
                        cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:20.0f];
    
    NSURLConnection * conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
    if(conn) {
        
        retrivedData = [[NSMutableData alloc] init];
    }
}


- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    
    [retrivedData appendData:data];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    [delegate didEndWithError:error];
    [connection release];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
 
    [connection release];
    
    photos = [[NSMutableArray alloc] init];
    
    NSXMLParser * parser = [[NSXMLParser alloc] initWithData:retrivedData];
    
    [parser setDelegate:self];
    
    [parser parse];
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    
    if([elementName isEqualToString:@"photo"]) {
        
        FlickrPhoto * flickPhoto = [[FlickrPhoto alloc] init];
        
        [flickPhoto setTitulo:[attributeDict objectForKey:@"title"]];
        
        [photos addObject:flickPhoto];
        
        [flickPhoto release];
    }
}

- (void)parserDidEndDocument:(NSXMLParser *)parser {
    
    if(delegate) {
        
        [delegate didRetrivePhotos:photos];
    }
}
@end
