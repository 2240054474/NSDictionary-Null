//
//  NSDictionary+Null.h
//  Keeper
//
//  Created by 带我逃跑吧 on 2019/5/9.
//  Copyright © 2019年 GeekLee. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/*
 **
 使用示例：
 1⃣️：引入#import "NSDictionary+Null.h"
 2⃣️：NSDictionary *sucDic = [NSDictionary changeType:sucDic];
 **
 */

@interface NSDictionary (Null)

+ (id)changeType:(id)myObj;

@end



NS_ASSUME_NONNULL_END
