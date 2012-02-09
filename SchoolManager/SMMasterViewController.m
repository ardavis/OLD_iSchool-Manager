//
//  SMMasterViewController.m
//  SchoolManager
//
//  Created by Andrew Davis on 2/4/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import "SMMasterViewController.h"
#import "SMDetailViewController.h"
#import "CourseDataController.h"
#import "Course.h"

@implementation SMMasterViewController

@synthesize dataController = _dataController;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataController countOfMasterCourseList];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    static NSString *CellIdentifier = @"CourseCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure Cell
    Course *courseAtIndex = [self.dataController objectInMasterCourseListAtIndex:indexPath.row];
    
    cell.textLabel.text = courseAtIndex.name;
    cell.detailTextLabel.text = courseAtIndex.number;
    
    return cell;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender 
{
    if ([[segue identifier] isEqualToString:@"CourseProjectsDetail"])
    {
        SMDetailViewController *detailViewController = [segue destinationViewController];
        
        detailViewController.course = [self.dataController objectInMasterCourseListAtIndex:[self.tableView indexPathForSelectedRow].row];
    }
}

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
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


@end
