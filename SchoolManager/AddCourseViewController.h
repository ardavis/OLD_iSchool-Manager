//
//  AddCourseViewController.h
//  SchoolManager
//
//  Created by Andrew Davis on 2/10/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddCourseViewControllerDelegate;

@interface AddCourseViewController : UIViewController <UITextFieldDelegate>


- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;


@property (weak, nonatomic) IBOutlet UITextField *courseInputName;
@property (weak, nonatomic) IBOutlet UITextField *courseInputNumber;
@property (weak, nonatomic) id <AddCourseViewControllerDelegate> delegate;

@end


@protocol AddCourseViewControllerDelegate <NSObject>

- (void)addCourseViewControllerDidCancel:(AddCourseViewController *)controller;
- (void)addCourseViewControllerDidFinish:(AddCourseViewController *)controller name:(NSString *)name number:(NSString *)number;

@end