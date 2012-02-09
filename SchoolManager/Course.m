//
//  Course.m
//  SchoolManager
//
//  Created by Andrew Davis on 2/8/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import "Course.h"

@implementation Course

@synthesize name = _name, number = _number;

- (id) initWithName:(NSString *)name number:(NSString *)number
{
    self = [super init];
    
    if (self) 
    {
        _name = name;
        _number = number;
        return self;
    }
    
    return nil;
    
}

@end
