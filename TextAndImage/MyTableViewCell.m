//
//  MyTableViewCell.m
//  TextAndImage
//
//  Created by 吕自龙 on 16/7/4.
//  Copyright © 2016年 lvzilong.com. All rights reserved.
//

#import "MyTableViewCell.h"

@interface MyTableViewCell ()

/**
 *  数据的contentView
 */
@property (nonatomic,weak) UIView *myView;

/**
 *  显示文本的label
 */
@property (nonatomic,weak) UILabel *contentLabel;

/**
 *  商品详情的imageView
 */
@property (nonatomic,weak) UIImageView *infoImgView;
@end

@implementation MyTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"status";
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell)
    {
        cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.backgroundColor = [UIColor whiteColor];
        [self setupOriginal];
    }
    return self;
}

- (void)setupOriginal
{

    //contentView
    UIView *myView = [[UIView alloc] init];
    myView.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:myView];
    self.myView = myView;
    
    /** 正文 */
    UILabel *contentLabel = [[UILabel alloc] init];
    contentLabel.font = [UIFont systemFontOfSize:15];
    contentLabel.numberOfLines = 0;
    [myView addSubview:contentLabel];
    self.contentLabel = contentLabel;
    
    //商品详情的imageView
    UIImageView *infoImgView = [[UIImageView alloc] init];
    infoImgView.image = [UIImage imageNamed:@"123.jpg"];
    [myView addSubview:infoImgView];
    self.infoImgView = infoImgView;
}

- (void)setStatueFrame:(AirStatueF *)statueFrame
{
    _statueFrame = statueFrame;
    //所有的view
    self.myView.frame = statueFrame.myViewF;
    
    //图片
    self.infoImgView.frame = statueFrame.imgViewF;
    
    //正文
    self.contentLabel.text = statueFrame.statue.content;
    self.contentLabel.frame = statueFrame.contentF;
    
    //
    
}

@end
