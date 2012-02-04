//
//  SMDetailViewController.h
//  SchoolManager
//
//  Created by Andrew Davis on 2/4/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SMDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
