//
//  Project.h
//  SchoolManager
//
//  Created by Andrew Davis on 2/9/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>

@interface Project : NSObject <RKRequestDelegate> {
    NSNumber* _identifier;
    NSString* _title;
    NSString* _description;
}

@property (nonatomic, copy)   NSString *title;
@property (nonatomic, copy)   NSString *description;
@property (nonatomic, strong) NSDate *due_date;
//@property (nonatomic)         BOOL *complete;

- (id) initWithTitle:(NSString *)title description:(NSString *)description due_date:(NSDate *)due_date;

@end
