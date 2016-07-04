//
//  AirStatueF.h
//  TextAndImage
//
//  Created by 吕自龙 on 16/7/4.
//  Copyright © 2016年 lvzilong.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AirStatue.h"
#import <UIKit/UIKit.h>
@interface AirStatueF : NSObject

@property (nonatomic,strong) AirStatue *statue;

@property (nonatomic,assign) CGRect myViewF;

@property (nonatomic, assign) CGRect contentF;

@property (nonatomic,assign) CGRect imgViewF;

@property (nonatomic,assign) CGFloat cellHeight;


@end
