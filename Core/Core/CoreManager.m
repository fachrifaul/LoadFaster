//
//  CoreManager.m
//  Core
//
//  Created by Fachri Febrian on 25/01/19.
//  Copyright © 2019 LoadFaster. All rights reserved.
//

#import "CoreManager.h"
#import <Crashlytics/Crashlytics.h>

@implementation CoreManager

+ (CoreManager *)sharedInstance {
    static CoreManager *_sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[CoreManager alloc] init];
    });
    return _sharedInstance;
}

- (void)logError:(NSString *)message {
    NSLog(@"CoreManager name is %@", message);
    CLS_LOG(@"%@", message);
}

- (void)recordError:(NSError *)error {
    [CrashlyticsKit recordError:error];
}

@end
