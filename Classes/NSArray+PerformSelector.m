//
//  NSArray+PerformSelector.m
//  SegmentedControlExample
//
//  Created by Marcus Crafter on 24/05/10.
//  Copyright 2010 Red Artisan. All rights reserved.
//

#import "NSArray+PerformSelector.h"


@implementation NSArray (PerformSelector)

- (NSArray *)arrayByPerformingSelector:(SEL)selector {
    NSMutableArray * results = [NSMutableArray array];

    for (id object in self) {
        id result = [object performSelector:selector];
        [results addObject:result];
    }

    return results;
}

@end
