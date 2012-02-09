//
//  ProjectDescriptionViewController.m
//  SchoolManager
//
//  Created by Andrew Davis on 2/9/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import "ProjectDescriptionViewController.h"

@implementation ProjectDescriptionViewController
@synthesize projectDueDate;
@synthesize projectDescription;
@synthesize projectCompleted;

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

- (void)viewDidUnload
{
    [self setProjectDueDate:nil];
    [self setProjectDescription:nil];
    [self setProjectCompleted:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
