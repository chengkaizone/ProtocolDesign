//
//  DataModel.h
//  TableViewDemo
//
//  Created by YouXianMing on 15/6/17.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDataModel.h"

@interface DataModel : BaseDataModel

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *subTitle;
@property (nonatomic, strong) NSString *infomation;

+ (instancetype)dataModelWithTitle:(NSString *)title subTitle:(NSString *)subTitle infomation:(NSString *)infomation;

@end
