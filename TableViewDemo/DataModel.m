//
//  DataModel.m
//  TableViewDemo
//
//  Created by YouXianMing on 15/6/17.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "DataModel.h"

// 宽度
#define  Width                             [UIScreen mainScreen].bounds.size.width

// 高度
#define  Height                            [UIScreen mainScreen].bounds.size.height

@interface DataModel ()

@property (nonatomic, strong) NSNumber *height;

@end

@implementation DataModel

+ (instancetype)dataModelWithTitle:(NSString *)title subTitle:(NSString *)subTitle infomation:(NSString *)infomation {
    
    DataModel *model = [[[self class] alloc] init];
    
    model.title      = title;
    model.subTitle   = subTitle;
    model.infomation = infomation;
    
    return model;
}

- (CGFloat)cellHeight {
    return _height.floatValue;
}

- (void)calculateTheHeight {
    
    CGFloat titleHeight = [self heightWithString:self.title LabelFont:[UIFont boldSystemFontOfSize:18.f] withLabelWidth:Width - 20];
    CGFloat subTlHeight = [self heightWithString:self.subTitle LabelFont:[UIFont systemFontOfSize:14.f] withLabelWidth:Width - 20];
    CGFloat infoHeight  = [self heightWithString:self.infomation LabelFont:[UIFont italicSystemFontOfSize:16.f] withLabelWidth:Width - 20];
    
    self.height = @(titleHeight + subTlHeight + infoHeight + 20);
}

#pragma mark - 计算文本高度
- (CGFloat)heightWithString:(NSString *)string LabelFont:(UIFont *)font withLabelWidth:(CGFloat)width {
    CGFloat height = 0;
    
    if (string.length == 0) {
        height = 0;
    } else {
        
        // 字体
        NSDictionary *attribute = @{NSFontAttributeName: [UIFont systemFontOfSize:18.f]};
        if (font) {
            attribute = @{NSFontAttributeName: font};
        }
        
        // 尺寸
        CGSize retSize = [string boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                              options:
                          NSStringDrawingTruncatesLastVisibleLine |
                          NSStringDrawingUsesLineFragmentOrigin |
                          NSStringDrawingUsesFontLeading
                                           attributes:attribute
                                              context:nil].size;
        
        height = retSize.height;
    }
    
    return height;
}


@end
