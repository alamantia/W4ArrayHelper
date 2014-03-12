//
//  NSArray+W4ArrayHelper.h
//  W4ArrayHelper
//
//  Created by waffles on 3/12/14.
//  Copyright (c) 2014 w4ffles. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (W4ArrayHelper)

typedef id(^func)(id);
typedef Boolean (^filter)(id);

- (NSMutableArray *) filterWithBlock: (filter) filter;
- (NSArray *)  map: (func) func;

@end
