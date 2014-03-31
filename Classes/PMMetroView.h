//
//  LMParisianCommuteStationView.h
//  test
//
//  Created by Peter Meuel on 13/02/2014.
//  Copyright (c) 2014 Peter Meuel. All rights reserved.
//

#import <UIKit/UIKit.h>

// copy-paste those for easy replacing using regex in xcode

//\[(.*) addCurveToPoint: CGPointMake\((.*), (.*)\) controlPoint1: CGPointMake\((.*), (.*)\) controlPoint2: CGPointMake\((.*), (.*)\)\];
//CURVE_PATH($1 , $2 , $3 , $4 , $5 , $6 , $7);

//\[(.*) addLineToPoint: CGPointMake\((.*), (.*)\)]\;
//LINE_PATH_TO( $1 , $2 , $3 );

//\[(.*) moveToPoint: CGPointMake\((.*), (.*)\)\];
//MOVE_PATH_TO( $1 , $2 , $3);

#define CURVE_PATH(path,x1,y1,x2,y2,x3,y3)    [path addCurveToPoint: CGPointMake(x1 * ratioW,y1 * ratioH) controlPoint1: CGPointMake(x2 * ratioW,y2 * ratioH) controlPoint2: CGPointMake(x3 * ratioW,y3 * ratioH)]

#define MOVE_PATH_TO(path , x , y)            [path moveToPoint: CGPointMake(x * ratioW , y * ratioH)]

#define LINE_PATH_TO(path , x , y)            [path addLineToPoint: CGPointMake(x * ratioW , y * ratioH)]

#define RGBA(r,g,b,a)                         [UIColor colorWithRed:r green:g blue:b alpha:a]

#define MAKE_RATIOS(rect, scale)              CGFloat ratioW = (rect.size.width / scale), ratioH = (rect.size.height / scale)

typedef NS_ENUM(NSUInteger, LMLine)
{
  PARIS_METRO,
  PARIS_M1,
  PARIS_M2,
  PARIS_M3,
  PARIS_M3b,
  PARIS_M4,
  PARIS_M5,
  PARIS_M6,
  PARIS_M7,
  PARIS_M7b,
  PARIS_M8,
  PARIS_M9,
  PARIS_M10,
  PARIS_M11,
  PARIS_M12,
  PARIS_M13,
  PARIS_M14,
  
  PARIS_TRAM,
  PARIS_T1,
  PARIS_T2,
  PARIS_T3a,
  PARIS_T3b,
  PARIS_T4,
  PARIS_T5,
  
  PARIS_RER,
  PARIS_RER_A,
  PARIS_RER_B,
  PARIS_RER_C,
  PARIS_RER_D,
  PARIS_RER_E,
  
  PARIS_TRANS,
  PARIS_TRANS_H,
  PARIS_TRANS_J,
  PARIS_TRANS_K,
  PARIS_TRANS_L,
  PARIS_TRANS_N,
  PARIS_TRANS_P,
  PARIS_TRANS_R,
  PARIS_TRANS_U
};

@interface PMMetroView : UIView

- (id)initWithFrame:(CGRect)frame lineName:(LMLine)pLineName;


@end
