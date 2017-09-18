//
//  LineSegment.m
//  FingerPaint
//
//  Created by Paul on 2017-09-17.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "LineSegment.h"

@implementation LineSegment

-(instancetype)initWithFirstPoint:(CGPoint)firstPoint secondPoint:(CGPoint)secondPoint{

    if (self = [super init]){
    
        _firstPoint = firstPoint;
        _secondPoint = secondPoint;
    
    }
    return self;

}



@end
