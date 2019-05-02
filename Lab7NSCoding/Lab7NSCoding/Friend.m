//
//  Friend.m
//  Lab7NSCoding
//
//  Created by JETS Mobile Lab - 5 on 5/2/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "Friend.h"

@implementation Friend 


- (nullable instancetype)initWithCoder:(nonnull NSCoder *)aDecoder {
    self.name=[aDecoder decodeObjectForKey:@"name"];
    self.phone=[aDecoder decodeObjectForKey:@"phone"];
    self.email=[aDecoder decodeObjectForKey:@"email"];
    self.age=[aDecoder decodeIntForKey:@"age"];
    return self;
}

- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeObject:_phone forKey:@"phone"];
    [aCoder encodeObject:_email forKey:@"email"];
    [aCoder encodeInt:_age forKey:@"age"];
}


@end
