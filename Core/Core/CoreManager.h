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

- (void)trackerSendScreenClassName:(NSString *)message;

@end

NS_ASSUME_NONNULL_END
