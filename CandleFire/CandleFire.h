//
//  CandleFire.h
//  CandleFire
//
//  Created by Pavel Gnatyuk on 7/29/13.
//  Copyright (c) 2013 Pavel Gnatyuk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CandleFire : UIView

@property (assign) CGPoint point;

+ (id)candle;
+ (id)candleAt:(CGPoint)point;

@end
