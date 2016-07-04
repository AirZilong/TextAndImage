//
//  AirStatue.h
//  TextAndImage
//
//  Created by 吕自龙 on 16/7/4.
//  Copyright © 2016年 lvzilong.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AirStatue : NSObject

@property (nonatomic,strong) NSString *name;

@property (nonatomic,copy) NSString *content;

- (instancetype)initWith:(NSDictionary *)dic;
@end
