//
//  NSDictionary+Null.m
//  Keeper
//
//  Created by 带我逃跑吧 on 2019/5/9.
//  Copyright © 2019年 GeekLee. All rights reserved.
//

#import "NSDictionary+Null.h"

@implementation NSDictionary (Null)


+ (id)changeType:(id)myObj{
    
    //判断obj的类型
    if ([myObj isKindOfClass:[NSDictionary class]]){
        return [self nullDic:myObj];
    }else if([myObj isKindOfClass:[NSArray class]]){
        return [self nullArr:myObj];
    }else if([myObj isKindOfClass:[NSString class]]){
        return [self stringToString:myObj];
    }else if([myObj isKindOfClass:[NSNull class]]){
        return [self nullToString];
    }else {
        return myObj;
    }
}
//处理字典类型
+ (NSDictionary *)nullDic:(NSDictionary *)myDic{
    NSArray *keyArr = [myDic allKeys];
    NSMutableDictionary *resDic = [[NSMutableDictionary alloc]init];
    for (int i = 0; i < keyArr.count; i ++){
        id obj = [myDic objectForKey:keyArr[i]];
        obj = [self changeType:obj];
        [resDic setObject:obj forKey:keyArr[i]];
    }
    return resDic;
}
//处理数组类型
+ (NSArray *)nullArr:(NSArray *)myArr{
    NSMutableArray *resArr = [[NSMutableArray alloc] init];
    for (int i = 0; i < myArr.count; i ++){
        id obj = myArr[i];
        obj = [self changeType:obj];
        [resArr addObject:obj];
    }
    return resArr;
}

+ (NSString *)stringToString:(NSString *)string{
    return string;
}

//将Null类型的项目转化成@""
+ (NSString *)nullToString{
    return @"";
}




@end
