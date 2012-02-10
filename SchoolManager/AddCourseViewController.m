//
//  AddCourseViewController.m
//  SchoolManager
//
//  Created by Andrew Davis on 2/10/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import "AddCourseViewController.h"

@implementation AddCourseViewController

@synthesize courseInputName = _courseInputName;
@synthesize courseInputNumber = _courseInputNumber;
@synthesize delegate = _delegate;

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if ((textField == self.courseInputName) || (textField == self.courseInputNumber))
    {
        [textField resignFirstResponder];
    }
    
    return YES;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidUnload
{
    [self setCourseInputName:nil];
    [self setCourseInputNumber:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)cancel:(id)sender {
    [[self delegate] addCourseViewControllerDidCancel:self];
}

- (IBAction)done:(id)sender {
    [[self delegate] addCourseViewControllerDidFinish:self name:self.courseInputName.text number:self.courseInputNumber.text];
}
@end
