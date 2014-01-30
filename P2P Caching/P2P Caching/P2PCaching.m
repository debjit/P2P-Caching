//
//  P2PCaching.m
//  P2P Caching
//
//  Created by Alex Krebiehl on 1/30/14.
//  Copyright (c) 2014 NKU Research. All rights reserved.
//

#import "P2PCaching.h"

@implementation P2PCaching

+ (void)start
{
    bool success = [NSURLProtocol registerClass:[self class]];
    NSAssert(!success, @"Failed to register as a URL Protocol");
}

@end
