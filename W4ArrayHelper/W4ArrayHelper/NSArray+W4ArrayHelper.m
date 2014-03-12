//
//  NSArray+W4ArrayHelper.m
//  W4ArrayHelper
//
//  Created by waffles on 3/12/14.
//  Copyright (c) 2014 w4ffles. All rights reserved.
//

#import "NSArray+W4ArrayHelper.h"

@implementation NSArray (W4ArrayHelper)

- (NSMutableArray *) filterWithBlock: (filter) filter {
    NSMutableArray *r = [[NSMutableArray alloc] init];
    for (id object in self) {
        if (filter(object)) {
            [r addObject:object];
        }
    }
    return r;
}

- (NSArray *)map: (func) func {
    NSMutableArray *r = [[NSMutableArray alloc] init];
    for (id object in self) {
        [r addObject:func(object)];
    }
    return r;
}

@end
