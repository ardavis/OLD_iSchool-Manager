//
//  SMDetailViewController.h
//  SchoolManager
//
//  Created by Andrew Davis on 2/4/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Course;

@interface SMDetailViewController : UIViewController

@property (strong, nonatomic) Course *course;
@property (weak, nonatomic) IBOutlet UILabel *courseNameLabel;

@property (strong, nonatomic) IBOutlet UITableView *incompleteProjectsTableView;
@property (strong, nonatomic) IBOutlet UITableView *completeProjectsTableView;
@end
