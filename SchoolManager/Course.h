//
//  Course.h
//  SchoolManager
//
//  Created by Andrew Davis on 2/8/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Course : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *number;

- (id) initWithName:(NSString *)name number:(NSString *)number;

@end