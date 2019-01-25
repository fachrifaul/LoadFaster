//
//  CoreManager.h
//  Core
//
//  Created by Fachri Febrian on 25/01/19.
//  Copyright © 2019 LoadFaster. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CoreManager : NSObject

+ (CoreManager *)sharedInstance;

- (void)logError:(NSString *)message;
- (void)recordError:(NSError *)error;

@end

NS_ASSUME_NONNULL_END
