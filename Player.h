//
//  Contact.h
//  BikerDown
//
//  Created by Kurt Andres on 6/25/13.
//  Copyright (c) 2013 Kurt Andres. All rights reserved.
//


@interface Player : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *number;
@property (nonatomic, copy) NSString *message;

- (void)encodeWithCoder:(NSCoder *)enCoder;

@end
