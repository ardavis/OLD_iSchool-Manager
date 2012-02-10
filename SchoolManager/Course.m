//
//  Course.m
//  SchoolManager
//
//  Created by Andrew Davis on 2/8/12.
//  Copyright (c) 2012 NASA. All rights reserved.
//

#import "Course.h"

@implementation Course

- (NSDictionary*)elementToPropertyMappings {  
    return [NSDictionary dictionaryWithKeysAndObjects:  
            @"id", @"identifier",  
            @"name", @"name",  
            @"number", @"number",  
            nil];  
}  

@synthesize identifier = _identifier, name = _name, number = _number;

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

- (void)createObject {  
    Course* new_course; 
    new_course.name = @"Awesome Class of Pi";  
    new_course.number = @"CE-3.14";
    
    // POST to /contacts  
    [[RKObjectManager sharedManager] postObject:new_course delegate:(id)self];  
}  

//- (void)updateObject {  
//    * blake = [Contact object];  
//    blake.identifier = [NSNumber numberWithInt:1];  
//    blake.name = @"Blake Watters";  
//    blake.company = @"RestKit";  
//    
//    // PUT to /contacts/1  
//    [[RKObjectManager sharedManager] putObject:blake delegate:(id)self];  
//}  
//
//- (void)deleteObject {  
//    Contact* blake = [Contact object];  
//    blake.identififer = [NSNumber numberWithInt:1];  
//    
//    // DELETE to /contacts/1  
//    [[RKObjectManager sharedManager] deleteObject:blake delegate:(id)self];  
//}

- (void)sendRequests {
    // Perform a simple HTTP GET and call me back with the results
    [[RKClient sharedClient] get:@"/foo.xml" delegate:(id)self];
    
    // Send a POST to a remote resource. The dictionary will be transparently
    // converted into a URL encoded representation and sent along as the request body
    NSDictionary* params = [NSDictionary dictionaryWithObject:@"RestKit" forKey:@"Sender"];
    [[RKClient sharedClient] post:@"/other.json" params:params delegate:self];
    
    // DELETE a remote resource from the server
//    [[RKClient client] delete:@"/missing_resource.txt" delegate:self];
}

- (void)request:(RKRequest*)request didLoadResponse:(RKResponse*)response {
    if ([request isGET]) {
        // Handling GET /foo.xml
        
        if ([response isOK]) {
            // Success! Let's take a look at the data
            NSLog(@"Retrieved XML: %@", [response bodyAsString]);
        }
        
    } else if ([request isPOST]) {
        
        // Handling POST /other.json
        if ([response isJSON]) {
            NSLog(@"Got a JSON response back from our POST!");
        }
        
    } else if ([request isDELETE]) {
        
        // Handling DELETE /missing_resource.txt
        if ([response isNotFound]) {
            NSLog(@"The resource path '%@' was not found.", [request resourcePath]);
        }
    }
}

@end
