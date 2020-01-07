//
//  LBJButton.m
//  ButtonTest
//
//  Created by LBJames on 2020/1/7.
//  Copyright © 2020 LBJames. All rights reserved.
//

#import "LBJButton.h"

@implementation LBJButton

- (void)drawRect:(CGRect)rect {
    
    CGRect titleFrame = self.titleLabel.frame;
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(ctx, self.underLineColor.CGColor);
    CGContextSetLineWidth(ctx, 2);//2表示线的高度
    CGContextMoveToPoint(ctx, CGRectGetMinX(titleFrame), CGRectGetMaxY(titleFrame) + 5);//距离文字底部有5个的距离
    CGContextAddLineToPoint(ctx, CGRectGetMaxX(titleFrame), CGRectGetMaxY(titleFrame) + 5);
    CGContextStrokePath(ctx);
    CGContextFillPath(ctx);
    CGContextRestoreGState(ctx);
}


- (void)setUnderLineColor:(UIColor *)underLineColor{
    _underLineColor = underLineColor;
    [self setNeedsDisplay];
}

@end
