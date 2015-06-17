//
//  BaseDataModel.h
//  TableViewDemo
//
//  Created by YouXianMing on 15/6/17.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CellHeightProtocol.h"

@interface BaseDataModel : NSObject <CellHeightProtocol>

#pragma mark - 要实现的协议
- (CGFloat)cellHeight;
- (void)calculateTheHeight;

@end
