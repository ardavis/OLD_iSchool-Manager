//
//  Project.m
//  SchoolManager
//
//  Created by Andrew Davis on 2/9/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import "Project.h"

@implementation Project



@synthesize title = _title, description = _description, due_date = _due_date;

- (id) initWithTitle:(NSString *)title description:(id)description due_date:(NSDate *)due_date
{
    self = [super init];
    if (self)
    {
        _title = title;
        _description = description;
        _due_date = due_date;
        
        return self;
    }
    
    return nil;
}

@end
