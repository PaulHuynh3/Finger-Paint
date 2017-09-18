//
//  fingerView.m
//  FingerPaint
//
//  Created by Paul on 2017-09-17.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "fingerView.h"
#import "LineSegment.h"

@interface fingerView ()

@property (nonatomic)NSMutableArray <LineSegment*>* line;
@end


@implementation fingerView

-(instancetype)initWithCoder:(NSCoder *)aDecoder{

    if (self =[super initWithCoder:aDecoder]){
    
        _line = [[NSMutableArray alloc]init];
    }
    return self;
}

#pragma mark - Touch Handling

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    UITouch *touch = touches.anyObject;
    CGPoint first = [touch previousLocationInView:self];
    LineSegment *segment = [[LineSegment alloc]initWithFirstPoint:first secondPoint:first];
    [self.line addObject:segment];
    [self setNeedsDisplay];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    UITouch *touch = touches.anyObject;
    CGPoint second = [touch previousLocationInView:self];
    LineSegment *segment = [[LineSegment alloc]initWithFirstPoint:second secondPoint:second];
    [self.line addObject:segment];
    [self setNeedsDisplay];
}

#pragma mark - Drawing









@end
