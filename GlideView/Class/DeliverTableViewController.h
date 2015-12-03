//
//  DeliverTableViewController.h
//  CareerdreamNew
//
//  Created by 赵祥凯 on 15/11/30.
//  Copyright © 2015年 Careerdream. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum : NSUInteger {
    DeliverTypeSU,  //提交
    DeliverTypeRJ,  //拒绝
    DeliverTypeRP,  //转发
    DeliverTypeRE,  //已读
    DeliverTypeTO,  //下线
    DeliverTypeIN,  //面试
    DeliverTypeALL
} DeliverType;

@interface DeliverTableViewController : UITableViewController

@property (nonatomic,assign)DeliverType deliverType;

@end
