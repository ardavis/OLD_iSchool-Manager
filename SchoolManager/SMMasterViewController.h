//
//  SMMasterViewController.h
//  SchoolManager
//
//  Created by Andrew Davis on 2/4/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CourseDataController;

@interface SMMasterViewController : UITableViewController

@property (nonatomic, retain) CourseDataController *dataController;

@end
