//
//  CrashManager.m
//  LoadFaster
//
//  Created by Fachri Febrian on 24/01/19.
//  Copyright © 2019 LoadFaster. All rights reserved.
//

#import "CrashManager.h"
//#import "LoadFaster-Swift.h"
#import <Core/Core.h>

@implementation CrashManager

+ (CrashManager *)sharedInstance {
    static CrashManager *_sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[CrashManager alloc] init];
    });
    return _sharedInstance;
}

- (void)logError:(NSString *)message {
    NSLog(@"CrashManager name is %@", message);
    //[[CoreManager sharedInstance] logError: message];
    [CoreManagerKit logError:message];
}
@end
