//
//  ProjectDataController.m
//  SchoolManager
//
//  Created by Andrew Davis on 2/9/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import "ProjectDataController.h"
#import "Project.h"

@interface ProjectDataController ()
    - (void)initializeDefaultDataList;
@end

@implementation ProjectDataController

@synthesize masterProjectList = _masterProjectList;

- (void)initializeDefaultDataList
{
    self.masterProjectList = [[NSMutableArray alloc] init];
    
    [self addProjectWithTitle:@"iProject" description:@"Do work son!" due_date:[NSDate date]];
}

- (void)setMasterProjectList:(NSMutableArray *)newProjectList
{
    if (_masterProjectList != newProjectList)
    {
        _masterProjectList = [newProjectList mutableCopy];
    }
}

- (unsigned)countOfMasterProjectList
{
    return [self.masterProjectList count];
}

- (Project *)objectInMasterProjectListAtIndex:(unsigned int)theIndex
{
    return [self.masterProjectList objectAtIndex:theIndex];
}

- (void)addProjectWithTitle:(NSString *)inputProjectTitle description:(NSString *)inputProjectDescription due_date:(NSDate *)inputProjectDueDate
{
    Project *project;
    project = [[Project alloc] initWithTitle:inputProjectTitle description:inputProjectDescription due_date:inputProjectDueDate];
}

- (id)init
{
    if (self = [super init])
    {
        [self initializeDefaultDataList];
        return self;
    }
    
    return nil;
}

@end
