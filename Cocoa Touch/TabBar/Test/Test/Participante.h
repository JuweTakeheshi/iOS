//
//  Participante.h
//  TableView
//
//  Created by Juan Jose Karam on 10/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Participante : NSObject {
    
    NSString * nombre;
    NSString * pais;
    UIImage * imagen;
}


@property(nonatomic, retain) NSString * nombre;
@property(nonatomic, retain) NSString * pais;
@property(nonatomic, retain) UIImage * imagen;
@end
