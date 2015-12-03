//
//  DeliverMenu.h
//  CareerdreamNew
//
//  Created by 赵祥凯 on 15/11/30.
//  Copyright © 2015年 Careerdream. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DeliverMenu;

@protocol DeliverMenuDelegate <NSObject>

@optional
- (void)deliverMenu:(DeliverMenu *)deliverMenu index:(NSInteger)index;

@end

@interface DeliverMenu : UIView

@property (nonatomic,strong)NSMutableArray * btnArr;

@property (nonatomic,strong) NSArray *titleA;

@property (nonatomic,weak)id<DeliverMenuDelegate>delegate;

/**
 *  切换选中btn
 */
- (void)btnRefre:(UIButton *)sender;

- (void)setBottomLineCenterX:(CGFloat)centerX;

@end
