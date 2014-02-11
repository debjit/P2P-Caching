//
//  P2PPeerServer.h
//  P2PCache
//
//  Created by Alex Krebiehl on 1/30/14.
//  Copyright (c) 2014 NKU Research. All rights reserved.
//

#import <Foundation/Foundation.h>

/** Every "Peer" will be running an instance of this class.  Basically it announces
 to the network that we are offering a service */

@interface P2PPeerServer : NSObject <NSNetServiceDelegate, NSStreamDelegate>


/** Start broadcasting to the network that we are available */
- (void)beginBroadcasting;

@end