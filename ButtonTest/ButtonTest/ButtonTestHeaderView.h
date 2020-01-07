//
//  ButtonTestHeaderView.h
//  ButtonTest
//
//  Created by LBJames on 2020/1/7.
//  Copyright © 2020 LBJames. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ButtonTestHeaderViewDelegate <NSObject>

@optional;
- (void)selectButtonTestHeaderViewWithButtonTitle:(NSString *)title;
- (void)selectButtonTestHeaderViewWithButtonTag:(NSInteger )tag;

@end

@interface ButtonTestHeaderView : UIView

@property(nonatomic, weak) id<ButtonTestHeaderViewDelegate> delegate; //!< <#name#>

@end

NS_ASSUME_NONNULL_END
