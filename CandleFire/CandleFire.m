//
//  CandleFire.m
//  CandleFire
//
//  Created by Pavel Gnatyuk on 7/29/13.
//  Copyright (c) 2013 Pavel Gnatyuk. All rights reserved.
//

#import "CandleFire.h"

@interface CandleFire()

@property (assign) CGPoint anchor;
@property (retain) NSArray *images;

@end

@implementation CandleFire

@dynamic point;

+ (id)candle
{
    CandleFire *candle = [[CandleFire alloc] init];
    return [candle autorelease];
}

+ (id)candleAt:(CGPoint)point
{
    CandleFire *candle = [[CandleFire alloc] init];
    [candle setPoint:point];
    return [candle autorelease];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setImages:[[self class] makeImages]];
    }
    return self;
}

- (void)dealloc
{
    [_images release];
    [super dealloc];
}

- (void)setPoint:(CGPoint)point
{
}

- (CGPoint)point
{
    return  [self anchor];
}

+ (NSArray *)makeImages
{
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:64];
    NSFileManager *manager = [NSFileManager defaultManager];
    NSString *path = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"CandleFire.bundle"];
    
    NSBundle *bundle = [NSBundle bundleWithPath:path];
    
    NSError *error = nil;
    NSArray *files = [manager contentsOfDirectoryAtPath:path error:&error];
    NSLog(@"files %@", files);
    return files;
}

@end
