//
//  Company.m
//  eightbitceo
//
//  Created by Ger Kelly on 18/04/2013.
//  Copyright (c) 2013 Getchoo Creations. All rights reserved.
//

#import "Company.h"

@implementation Company

@synthesize name = _name;

- (id)initWithName:(NSString*)name {
    if ((self = [super init])) {
        self.name = name;
    }
    return self;
}

@end
