//
//  AirStatueF.m
//  TextAndImage
//
//  Created by 吕自龙 on 16/7/4.
//  Copyright © 2016年 lvzilong.com. All rights reserved.
//

#import "AirStatueF.h"

@implementation AirStatueF

-(void)setStatue:(AirStatue *)statue
{
    _statue = statue;
    CGFloat cellW = [UIScreen mainScreen].bounds.size.width;
    CGFloat contentX = 10;
    CGFloat contentY = 10;
    CGFloat contentW = cellW - 20;
    CGSize contentSize = [self sizeWithFont:[UIFont systemFontOfSize:15] maxW:contentW string:statue.content];
    
    //正文frame
    self.contentF = (CGRect){{contentX,contentY},contentSize};
    
    //图片的frame
    self.imgViewF = CGRectMake(0, CGRectGetMaxY(self.contentF), cellW, cellW * 3 / 4.0);
    
    //myViewF
    self.myViewF = CGRectMake(0, 0, self.contentF.size.width, CGRectGetMaxY(self.imgViewF) + 20);
    
    //cell的高度
    self.cellHeight = self.myViewF.size.height + 5;
}

- (CGSize)sizeWithFont:(UIFont *)font maxW:(CGFloat)maxW string:(NSString *)str
{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = font;
    CGSize maxSize = CGSizeMake(maxW, MAXFLOAT);
    return [str boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

@end
