//
//  DataModelCell.m
//  TableViewDemo
//
//  Created by YouXianMing on 15/6/17.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "DataModelCell.h"
#import "UIView+SetRect.h"

// 宽度
#define  Width                             [UIScreen mainScreen].bounds.size.width

// 高度
#define  Height                            [UIScreen mainScreen].bounds.size.height

@interface DataModelCell ()

@property (nonatomic, strong) UILabel *title;
@property (nonatomic, strong) UILabel *subTitle;
@property (nonatomic, strong) UILabel *infomaintion;

@end

@implementation DataModelCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {

        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        [self buildViews];
        
    }
    
    return self;
}

- (void)buildViews {
    
    _title                  = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, Width - 20, 20)];
    _title.numberOfLines    = 0;
    _title.font             = [UIFont boldSystemFontOfSize:18.f];
    _title.textColor        = [UIColor blackColor];
    [self addSubview:_title];
    
    
    _subTitle               = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, Width - 20, 20)];
    _subTitle.numberOfLines = 0;
    _subTitle.font          = [UIFont systemFontOfSize:14.f];
    _subTitle.textColor     = [UIColor grayColor];
    [self addSubview:_subTitle];
    
    
    _infomaintion               = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, Width - 20, 20)];
    _infomaintion.numberOfLines = 0;
    _infomaintion.font          = [UIFont italicSystemFontOfSize:16.f];
    _infomaintion.textColor     = [UIColor redColor];
    [self addSubview:_infomaintion];
    
}

- (void)loadData:(id)data indexPath:(NSIndexPath *)indexPath {
    
    DataModel *model = data;
    
    _title.text        = model.title;
    _subTitle.text     = model.subTitle;
    _infomaintion.text = model.infomation;
    
    _title.frame        = CGRectMake(10, 10, Width - 20, 20);
    [_title sizeToFit];
    
    _subTitle.frame     = CGRectMake(10, _title.height + 10, Width - 20, 20);
    [_subTitle sizeToFit];
    
    _infomaintion.frame = CGRectMake(10, _title.height + _subTitle.height + 10, Width - 20, 20);
    [_infomaintion sizeToFit];
    
}

@end
