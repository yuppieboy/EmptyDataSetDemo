//
//  YZTableViewController.h
//  test
//
//  Created by WangPeng on 16/1/13.
//  Copyright © 2016年 WangPeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIScrollView+EmptyDataSet.h"

@interface YZTableViewController : UITableViewController<DZNEmptyDataSetSource, DZNEmptyDataSetDelegate>
@property(nonatomic,strong)NSString *identify;
@property(nonatomic,assign)NSInteger numberInSection;
@property (nonatomic, getter=isLoading) BOOL loading;

@end
