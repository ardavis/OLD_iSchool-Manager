//
//  SMDetailViewController.m
//  SchoolManager
//
//  Created by Andrew Davis on 2/4/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import "SMDetailViewController.h"
#import "Course.h"

@interface SMDetailViewController ()
- (void)configureView;
@end

@implementation SMDetailViewController

@synthesize incompleteProjectsTableView = _incompleteProjectsTableView;
@synthesize completeProjectsTableView = _completeProjectsTableView;
@synthesize course = _course, courseNameLabel = _courseNameLabel;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    [_incompleteProjectsTableView setDelegate:(id)self];
    [_incompleteProjectsTableView setDataSource:(id)self];
    
    [_completeProjectsTableView setDelegate:(id)self];
    [_completeProjectsTableView setDataSource:(id)self];
    
    [self configureView];
}

- (void)viewDidUnload
{
    [self setIncompleteProjectsTableView:nil];
    [self setCompleteProjectsTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)setCourse:(Course *)newCourse
{
    if (_course != newCourse) {
        _course = newCourse;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    
    Course *myCourse = self.course;
    
    if (myCourse) 
    {
        self.navigationItem.title = myCourse.number;
        
        self.courseNameLabel.text = myCourse.name;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.incompleteProjectsTableView)
    {
        NSLog(@"In Incomplete Projects!");
        return 1;
    }
    else if (tableView == self.completeProjectsTableView)
    {
        NSLog(@"In Complete Projects!");
        return 1;
    }
    
    return 0;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (tableView == self.incompleteProjectsTableView)
    {
        return @"Incomplete Projects";
    }
    else if (tableView == self.completeProjectsTableView)
    {
        return @"Completed Projects";
    }
    
    return @"";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    UITableViewCell *cell = nil;
    NSString *projectLabel = @"";
    NSString *projectDetailLabel = @"";
    
    if (tableView == self.incompleteProjectsTableView)
    {
        NSLog(@"INCOMPLETE CELL SECTION!");
        static NSString *IncompleteCellIdentifier = @"IncompleteProjectCell";
        
        cell = [tableView dequeueReusableCellWithIdentifier:IncompleteCellIdentifier];
        
        projectLabel = @"iProject";
        projectDetailLabel = @"Due in 2 days!";
    }
    
    else if (tableView == self.completeProjectsTableView)
    {
        NSLog(@"COMPLETE CELL SECTION!");
        static NSString *CompleteCellIdentifier = @"CompleteProjectCell";
        
        cell = [tableView dequeueReusableCellWithIdentifier:CompleteCellIdentifier];
        
        projectLabel = @"iLab #3";
        projectDetailLabel = @"Complete!";
    }
    
    // Configure Cell
    //Course *courseAtIndex = [self.dataController objectInMasterCourseListAtIndex:indexPath.row];
    
    cell.textLabel.text = projectLabel;
    cell.detailTextLabel.text = projectDetailLabel;
    
    return cell;  
    
    return nil;
}


@end
