//
//  CourseDataController.h
//  SchoolManager
//
//  Created by Andrew Davis on 2/8/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Course;

@interface CourseDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterCourseList;

- (unsigned) countOfMasterCourseList;

- (Course *)objectInMasterCourseListAtIndex:(unsigned)theIndex;

- (void)addCourseWithName:(NSString *)inputCourseName number:(NSString *)inputNumber;

@end
