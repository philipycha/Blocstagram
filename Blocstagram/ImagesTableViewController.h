//
//  ImagesTableViewController.h
//  Blocstagram
//
//  Created by Philip Ha on 2016-02-21.
//  Copyright (c) 2016 Bloc. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Media;

@interface ImagesTableViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *images;
- (void) showShareSheet:(Media *)mediaItem ;

@end
