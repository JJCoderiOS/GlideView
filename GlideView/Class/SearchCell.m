//
//  SearchCell.m
//  CareerdreamNew
//
//  Created by 赵祥凯 on 15/11/30.
//  Copyright © 2015年 Careerdream. All rights reserved.
//

#import "SearchCell.h"

@interface SearchCell ()
/** 公司图片 */
@property (weak, nonatomic) IBOutlet UIImageView *companyImgView;
/** 职位 */
@property (weak, nonatomic) IBOutlet UILabel *positionLabel;
/** 新职位提示 */
@property (weak, nonatomic) IBOutlet UILabel *alertNewLabel;
/** 发布时间 */
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
/** 公司名称和地址 */
@property (weak, nonatomic) IBOutlet UILabel *companyLabel;
/** 公司名称和地址 */
@property (weak, nonatomic) IBOutlet UIView *lineView;

/** 福利 */
@property (weak, nonatomic) IBOutlet UILabel *welfare1Label;
@property (weak, nonatomic) IBOutlet UILabel *welfare2Label;
@property (weak, nonatomic) IBOutlet UILabel *welfare3Label;
@property (weak, nonatomic) IBOutlet UILabel *welfare4Label;
@property (weak, nonatomic) IBOutlet UILabel *welfare5Label;
/** 用来放福利label的数组 */
@property (nonatomic,strong) NSMutableArray * welfareArr;

@end

@implementation SearchCell

- (NSMutableArray *)welfareArr
{
    if (_welfareArr == nil) {
        _welfareArr = [NSMutableArray arrayWithObjects:self.welfare1Label,self.welfare2Label,self.welfare3Label,self.welfare4Label,self.welfare5Label, nil];
    }
    return _welfareArr;
}

- (void)awakeFromNib {
    self.companyImgView.layer.cornerRadius = 2;
    
    self.positionLabel.textColor = HexColor(Color_KeywordLabel);
    //新职位提示
    self.alertNewLabel.textColor = HexColor(Color_AlertBGView);
    self.alertNewLabel.layer.cornerRadius = 10;
    self.alertNewLabel.layer.borderColor = HexColor(Color_AlertBGView).CGColor;
    self.alertNewLabel.layer.borderWidth = 1;
    
    self.companyLabel.textColor = HexColor(Color_PositionLabel);
    self.timeLabel.textColor = HexColor(Color_PlaceholderLabel);
    
    for (UILabel * label in self.welfareArr) {
        label.textColor = HexColor(Color_PlaceholderLabel);
        label.layer.borderColor = HexColor(Color_PlaceholderLabel).CGColor;
        label.layer.borderWidth = 1;
        label.layer.cornerRadius = 2;
    }
}

- (void)setDeliver:(Deliver *)deliver
{
    _deliver = deliver;
    
    self.lineView.hidden = YES;
    for (UILabel * label in self.welfareArr) {
        label.hidden = YES;
    }
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
