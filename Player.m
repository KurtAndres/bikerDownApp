//
//  Contact.m
//  BikerDown
//
//  Created by Kurt Andres on 6/25/13.
//  Copyright (c) 2013 Kurt Andres. All rights reserved.
//


#import "Player.h"

@implementation Player

@synthesize name;
@synthesize number;
@synthesize message;


- (void)encodeWithCoder:(NSCoder *)enCoder
{
    [enCoder encodeObject:self.name forKey:@"ContactName"];
    [enCoder encodeObject:self.message forKey:@"ContactMessage"];
    [enCoder encodeObject:self.number forKey:@"ContactNumber"];
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [[Player alloc] init];
    if (self != nil)
    {
    self.name = [aDecoder decodeObjectForKey:@"ContactName"];
    self.message = [aDecoder decodeObjectForKey:@"ContactMessage"];
    self.number = [aDecoder decodeObjectForKey:@"ContactNumber"];
    }
    return self;
}

@end
