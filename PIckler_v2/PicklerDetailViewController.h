//
//  PicklerDetailViewController.h
//  PIckler_v2
//
//  Created by Dustin Godevais on 8/15/13.
//  Copyright (c) 2013 Dustin Godevais. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface PicklerDetailViewController : UIViewController

-(void)setCurrentPickler: (PFObject *)thePickler;

@end
