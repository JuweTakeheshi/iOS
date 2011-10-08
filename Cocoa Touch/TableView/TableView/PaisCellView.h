//
//  PaisCellView.h
//  TableView
//
//  Created by Juan Jose Karam on 10/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaisCellView : UITableViewCell {
    
    UILabel * label;
    UIImageView * imageView;
}

@property (nonatomic, retain) IBOutlet UILabel * label;

@property (nonatomic, retain) IBOutlet UIImageView * imageView;

@end
