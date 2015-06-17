//
//  CellHeightProtocol.h
//  TableViewDemo
//
//  Created by YouXianMing on 15/6/17.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 *  请用一个值来维护并存储cell的高度
 */
@protocol CellHeightProtocol <NSObject>
@required
/**
 *  cell最终高度
 *
 *  @return 获取cell的最终高度
 */
- (CGFloat)cellHeight;

/**
 *  计算高度
 */
- (void)calculateTheHeight;


@end
