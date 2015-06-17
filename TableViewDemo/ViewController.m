//
//  ViewController.m
//  TableViewDemo
//
//  Created by YouXianMing on 15/6/17.
//  Copyright (c) 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "DataModelCell.h"

#import "BaseTableViewCell.h"
#import "BaseDataModel.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView    *tableView;
@property (nonatomic, strong) NSMutableArray *dataModelsArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self initDataSource];
    
    [self initTableView];
}

- (void)initDataSource {
    
    self.dataModelsArray = [NSMutableArray array];
    [self.dataModelsArray addObject:[DataModel dataModelWithTitle:@"YouXianMing"
                                                         subTitle:@"逝者如斯，而未尝往也；盈虚者如彼，而卒莫消长也。盖将自其变者而观之，则天地曾不能以一瞬；自其不变者而观之，则物与我皆无尽也。"
                                                       infomation:@""]];
    [self.dataModelsArray addObject:[DataModel dataModelWithTitle:@""
                                                         subTitle:@"遊賢明はiOS開発エンジニア、愛する技術で、生活を愛し、献身、ゲームが好き、好きなものを食べて、美食愛好家、天道酬勤を学ぶことが好きで、信じ！"
                                                       infomation:@"精简计算UITableView文本高度"]];
    [self.dataModelsArray addObject:[DataModel dataModelWithTitle:@""
                                                         subTitle:@"Nager sage est un ingénieur, le développement de la technologie iOS amour, de l'amour de la vie, de dévouement, de jouer le jeu, aime manger, c'est un bon à rien, comme l'apprentissage, convaincu que Tiandaochouqin!"
                                                       infomation:@""]];
    [self.dataModelsArray addObject:[DataModel dataModelWithTitle:@"YouXianMing"
                                                         subTitle:@"逝者如斯，而未尝往也；盈虚者如彼，而卒莫消长也。盖将自其变者而观之，则天地曾不能以一瞬；自其不变者而观之，则物与我皆无尽也。"
                                                       infomation:@""]];
    [self.dataModelsArray addObject:[DataModel dataModelWithTitle:@""
                                                         subTitle:@"遊賢明はiOS開発エンジニア、愛する技術で、生活を愛し、献身、ゲームが好き、好きなものを食べて、美食愛好家、天道酬勤を学ぶことが好きで、信じ！"
                                                       infomation:@"精简计算UITableView文本高度"]];
    [self.dataModelsArray addObject:[DataModel dataModelWithTitle:@""
                                                         subTitle:@"Nager sage est un ingénieur, le développement de la technologie iOS amour, de l'amour de la vie, de dévouement, de jouer le jeu, aime manger, c'est un bon à rien, comme l'apprentissage, convaincu que Tiandaochouqin!"
                                                       infomation:@""]];
    [self.dataModelsArray addObject:[DataModel dataModelWithTitle:@"YouXianMing"
                                                         subTitle:@"逝者如斯，而未尝往也；盈虚者如彼，而卒莫消长也。盖将自其变者而观之，则天地曾不能以一瞬；自其不变者而观之，则物与我皆无尽也。"
                                                       infomation:@""]];
    [self.dataModelsArray addObject:[DataModel dataModelWithTitle:@""
                                                         subTitle:@"遊賢明はiOS開発エンジニア、愛する技術で、生活を愛し、献身、ゲームが好き、好きなものを食べて、美食愛好家、天道酬勤を学ぶことが好きで、信じ！"
                                                       infomation:@"精简计算UITableView文本高度"]];
    [self.dataModelsArray addObject:[DataModel dataModelWithTitle:@""
                                                         subTitle:@"Nager sage est un ingénieur, le développement de la technologie iOS amour, de l'amour de la vie, de dévouement, de jouer le jeu, aime manger, c'est un bon à rien, comme l'apprentissage, convaincu que Tiandaochouqin!"
                                                       infomation:@""]];
    [self.dataModelsArray addObject:[DataModel dataModelWithTitle:@"YouXianMing"
                                                         subTitle:@"逝者如斯，而未尝往也；盈虚者如彼，而卒莫消长也。盖将自其变者而观之，则天地曾不能以一瞬；自其不变者而观之，则物与我皆无尽也。"
                                                       infomation:@""]];
    [self.dataModelsArray addObject:[DataModel dataModelWithTitle:@""
                                                         subTitle:@"遊賢明はiOS開発エンジニア、愛する技術で、生活を愛し、献身、ゲームが好き、好きなものを食べて、美食愛好家、天道酬勤を学ぶことが好きで、信じ！"
                                                       infomation:@"精简计算UITableView文本高度"]];
    [self.dataModelsArray addObject:[DataModel dataModelWithTitle:@""
                                                         subTitle:@"Nager sage est un ingénieur, le développement de la technologie iOS amour, de l'amour de la vie, de dévouement, de jouer le jeu, aime manger, c'est un bon à rien, comme l'apprentissage, convaincu que Tiandaochouqin!"
                                                       infomation:@""]];
    
}

- (void)initTableView {
    
    self.tableView            = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate   = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[DataModelCell class] forCellReuseIdentifier:DATA_MODEL_CELL];
    [self.view addSubview:self.tableView];

}

#pragma mark - tableView代理方法
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BaseDataModel <CellHeightProtocol> *model = _dataModelsArray[indexPath.row];
    
    if ([model cellHeight] <= 0) {
        [model calculateTheHeight];
    }
    
    return [model cellHeight];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataModelsArray.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:DATA_MODEL_CELL];
    BaseDataModel *model    = _dataModelsArray[indexPath.row];
    [cell loadData:model indexPath:indexPath];
    
    return cell;
    
}

@end
