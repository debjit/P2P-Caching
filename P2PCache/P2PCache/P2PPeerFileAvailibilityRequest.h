//
//  P2PPeerFileAvailibilityRequest.h
//  P2PCache
//
//  Created by Alex Krebiehl on 2/10/14.
//  Copyright (c) 2014 NKU Research. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface P2PPeerFileAvailibilityRequest : NSObject <NSCoding>

@property (copy, readonly) NSString *fileName;

- (id)initWithFileName:(NSString *)fileName;

@end
