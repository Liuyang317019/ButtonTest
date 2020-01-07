//
//  ButtonTestHeaderView.m
//  ButtonTest
//
//  Created by LBJames on 2020/1/7.
//  Copyright © 2020 LBJames. All rights reserved.
//

#import "ButtonTestHeaderView.h"
#import "LBJButton.h"

@interface ButtonTestHeaderView ()

{
    LBJButton *_selButton;
}

@end

@implementation ButtonTestHeaderView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self == [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        [self createHBMessageTopViewUI];
    }
    
    return self;
}

- (void)createHBMessageTopViewUI{
    
    NSArray *buttonArray = @[@"哈哈",@"哦哦哦哦",@"嘿嘿嘿俄嘿嘿",@"耶耶耶耶耶耶耶耶"];
    CGFloat buttonWidth = self.frame.size.width * 0.92 / buttonArray.count;
    CGFloat buttonHeight = 35;
    for (int i = 0; i < buttonArray.count; i++) {
        LBJButton *button = [LBJButton buttonWithType:UIButtonTypeCustom];
        button.titleLabel.font = [UIFont systemFontOfSize:13];
        if (i == 0) {
            _selButton = button;
            button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
            button.underLineColor = [UIColor redColor];
        }else{
            button.underLineColor = [UIColor clearColor];
            button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
            if (i == buttonArray.count - 1) {
                button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
            }
        }
        button.frame = CGRectMake(self.frame.size.width * 0.04 + buttonWidth * i, 0, buttonWidth, buttonHeight);
        [button setTitle:buttonArray[i] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(clickHBMessageTopViewButton:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
    }
    
}


- (void)clickHBMessageTopViewButton:(LBJButton *)button{
    if (_selButton == button) {
        return;
    }else{
        _selButton.underLineColor = [UIColor clearColor];
        button.underLineColor = [UIColor redColor];
        _selButton = button;
        
        if ([self.delegate respondsToSelector:@selector(selectButtonTestHeaderViewWithButtonTitle:)]) {
            [self.delegate selectButtonTestHeaderViewWithButtonTitle:button.titleLabel.text];
        }
    }
}


@end
