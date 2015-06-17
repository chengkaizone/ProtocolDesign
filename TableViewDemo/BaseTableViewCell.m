//
//  BaseTableViewCell.m
//  TableViewDemo
//
//  Created by YouXianMing on 15/6/17.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "BaseTableViewCell.h"


@implementation BaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
    }
    
    return self;
}

- (void)loadData:(id)data indexPath:(NSIndexPath *)indexPath {
    
}

@end
