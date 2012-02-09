//
//  ProjectDescriptionViewController.h
//  SchoolManager
//
//  Created by Andrew Davis on 2/9/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProjectDescriptionViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *projectDueDate;
@property (weak, nonatomic) IBOutlet UILabel *projectDescription;
@property (weak, nonatomic) IBOutlet UISegmentedControl *projectCompleted;

@end
