//
//  LPFPSLabel.m
//  LPDemoProjectColletion
//
//  Created by lizhaopeng on 2017/7/24.
//  Copyright © 2017年 LP. All rights reserved.
//

#import "LPFPSLabel.h"

#import "LPWeakProxy.h"

#define KSize  CGSizeMake(55, 20)

#define KFontName1  @"Menol"
#define KFontName2  @"Courier"

@implementation LPFPSLabel
{
    CADisplayLink *_link;
    NSUInteger _count;
    NSTimeInterval _lastTime;
    UIFont *_font;
    UIFont *_subFont;
    
    NSTimeInterval *_timeInterval2;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (frame.size.height == 0 && frame.size.width == 0) {
        
        frame.size = KSize;
    }
    
    self = [super initWithFrame:frame];
    
    if (self) {
    
        self.layer.cornerRadius = 5;
        self.clipsToBounds = YES;
        self.textAlignment = NSTextAlignmentCenter;
        self.userInteractionEnabled = NO;
        self.backgroundColor = [UIColor colorWithWhite:0.000 alpha:0.700];
        
        _font = [UIFont fontWithName:KFontName1 size:14];
        if (_font) {
            _subFont = [UIFont fontWithName:KFontName1 size:4];
        }else {
            _font = [UIFont fontWithName:KFontName2 size:14];
            _subFont = [UIFont fontWithName:KFontName2 size:4];
        }
        
        _link = [CADisplayLink displayLinkWithTarget:[LPWeakProxy proxyWithTarget:self] selector:@selector(linkAction:)];
        [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
        
    }
    
    return self;
}

- (void)dealloc
{
    [_link invalidate];
}

- (void)linkAction:(CADisplayLink *)link
{
    if (_lastTime == 0) {
        _lastTime = _link.timestamp;
        return;
    }
    
    _count++;
    NSTimeInterval delta = link.timestamp - _lastTime;
    if (delta < 1) return;
    _lastTime = link.timestamp;
    float fps = _count/delta;
    _count = 0;
    
    CGFloat progress = fps/60.0;
    UIColor *color = [UIColor colorWithHue:0.27 * (progress-0.2) saturation:1 brightness:0.9 alpha:1];
    
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%d FPS",(int)round(fps)]];
    [text addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(0, text.length-3)];
    [text addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor] range:NSMakeRange(text.length-3, 3)];
    [text addAttribute:NSFontAttributeName value:_font range:NSMakeRange(0, text.length)];
    [text addAttribute:NSFontAttributeName value:_subFont range:NSMakeRange(text.length-4, 1)];
    
    self.attributedText = text;
    
    
    
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
