//
//  Course.h
//  SchoolManager
//
//  Created by Andrew Davis on 2/8/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>  

@interface Course : NSObject <RKRequestDelegate> {
    NSNumber* _identifier;
    NSString* _name;
    NSString* _number;
    NSArray* _projects;
}

@property (nonatomic, copy) NSNumber *identifier;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *number;
@property (nonatomic, weak) NSArray  *projects;

- (id) initWithName:(NSString *)name number:(NSString *)number;

@end