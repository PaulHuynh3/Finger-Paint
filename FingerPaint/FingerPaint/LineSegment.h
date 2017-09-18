//
//  LineSegment.h
//  FingerPaint
//
//  Created by Paul on 2017-09-17.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface LineSegment : NSObject

@property (nonatomic, readonly) CGPoint firstPoint;

@property (nonatomic, readonly)CGPoint secondPoint;

-(instancetype)initWithFirstPoint:(CGPoint)firstPoint secondPoint:(CGPoint)secondPoint;

@end
