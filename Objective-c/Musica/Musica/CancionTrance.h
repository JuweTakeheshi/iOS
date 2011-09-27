//
//  CancionTrance.h
//  Musica
//
//  Created by Juan Jose Karam on 9/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CancionTrance : NSObject {
    
    NSString * nombre;
}

- (void)tocaCancionConTarget:(id)target yAction:(SEL)action;
@end
