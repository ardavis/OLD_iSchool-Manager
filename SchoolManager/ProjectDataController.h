//
//  ProjectDataController.h
//  SchoolManager
//
//  Created by Andrew Davis on 2/9/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Project;

@interface ProjectDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterProjectList;

- (unsigned) countOfMasterProjectList;
- (Project *)objectInMasterProjectListAtIndex:(unsigned)theIndex;
- (void)addProjectWithTitle:(NSString *)inputProjectTitle description:(NSString *)inputProjectDescription due_date:(NSDate *)inputProjectDueDate;

@end
