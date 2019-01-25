//
//  CrashManager.h
//  LoadFaster
//
//  Created by Fachri Febrian on 24/01/19.
//  Copyright © 2019 LoadFaster. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CrashManager : NSObject

+ (CrashManager *)sharedInstance;

- (void)trackerSendScreenClassName:(NSString *)message;
@end

NS_ASSUME_NONNULL_END
