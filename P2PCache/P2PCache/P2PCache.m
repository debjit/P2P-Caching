//
//  P2PCache.m
//  P2PCache
//
//  Created by Alex Krebiehl on 1/30/14.
//  Copyright (c) 2014 NKU Research. All rights reserved.
//

#import "P2PCache.h"
#import "P2PPeerManager.h"
#import "P2PFileRequest.h"
#import "P2PFileManager.h"

/** Server Notifications */
NSString *P2PServerNodeWillStartNotification =       @"P2PServerNodeWillStartNotification";
NSString *P2PServerNodeDidStartNotification =        @"P2PServerNodeDidStartNotification";
NSString *P2PServerNodeFailedToStartNotification =   @"P2PServerNodeFailedToStartNotification";
NSString *P2PServerNodeDidStopNotification =         @"P2PServerNodeDidStopNotification";

/** File Request Notifications */
NSString *P2PActiveFileRequestsDidChange =           @"P2PActiveFileRequestsDidChange";

@implementation P2PCache

+ (void)start
{
    // Ramp-up the Peer Manager
    P2PLog( P2PLogLevelDebug, @"Starting the Peer Manager..." );
    [[P2PPeerManager sharedManager] start];
    
    /*  Lets just worry about peer discovery first
    
    // Register our caching protocol with the system
    P2PLog( P2PLogLevelDebug, @"Registering P2P Protocol..." );
    [NSURLProtocol registerClass:[P2PCacheProtocol class]];
     
     */
}

+ (void)shutdown
{
    [[P2PPeerManager sharedManager] cleanup];
    [[P2PFileManager sharedManager] cleanup];
}

+ (P2PFileRequest *)requestFileWithName:(NSString *)filename
{
    P2PFileRequest *request = [[P2PFileRequest alloc] initWithFileId:nil filename:filename];
    return request;
}

@end
