//
//  BaseTableViewCell.h
//  TableViewDemo
//
//  Created by YouXianMing on 15/6/17.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTableViewCell : UITableViewCell

/**
 *  加载数据
 *
 *  @param data      数据
 *  @param indexPath
 */
- (void)loadData:(id)data indexPath:(NSIndexPath *)indexPath;

@end
