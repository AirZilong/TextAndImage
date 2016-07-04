//
//  MyTableViewCell.h
//  TextAndImage
//
//  Created by 吕自龙 on 16/7/4.
//  Copyright © 2016年 lvzilong.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AirStatueF.h"
@interface MyTableViewCell : UITableViewCell

/**
 *  frame对象
 */
@property (nonatomic,strong) AirStatueF *statueFrame;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
