//
//  CourseDataController.m
//  SchoolManager
//
//  Created by Andrew Davis on 2/8/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import "CourseDataController.h"
#import "Course.h"
#import "RestKit/RestKit.h"

@interface CourseDataController ()

- (void)initializeDefaultDataList;

@end

@implementation CourseDataController

@synthesize masterCourseList = _masterCourseList;

- (void)setMasterCourseList:(NSMutableArray *)newList
{
    if (_masterCourseList != newList)
    {
        _masterCourseList = [newList mutableCopy];
    }
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

- (unsigned)countOfMasterCourseList 
{
    return [self.masterCourseList count];
}

- (Course *)objectInMasterCourseListAtIndex:(unsigned int)theIndex
{
    return [self.masterCourseList objectAtIndex:theIndex];
}

- (void)addCourseWithName:(NSString *)inputCourseName number:(NSString *)inputCourseNumber
{
    Course *myCourse;
    
    myCourse = [[Course alloc] initWithName:inputCourseName number:inputCourseNumber];
    
    [self.masterCourseList addObject:myCourse];
    
    // Put the course on the server
    [[RKObjectManager sharedManager] postObject:myCourse delegate:(id)self];
}

- (void)initializeDefaultDataList
{
    self.masterCourseList = [[NSMutableArray alloc] init];
    
    // Get all courses from the server HERE!
    
    [self addCourseWithName:@"Mobile App Development" number:@"CE-491"];
}

@end
