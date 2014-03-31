//
//  LMParisianCommuteStationView.m
//  test
//
//  Created by Peter Meuel on 13/02/2014.
//  Copyright (c) 2014 Peter Meuel. All rights reserved.
//

#import "PMMetroView.h"

#import "PMMetroView+Metro.h"
#import "PMMetroView+Tram.h"
#import "PMMetroView+RER.h"
#import "PMMetroView+Transilien.h"

@interface PMMetroView ()


@property (nonatomic , assign) LMLine line;


@end


@implementation PMMetroView

- (id)initWithFrame:(CGRect)frame lineName:(LMLine)pLine;
{
  self = [self initWithFrame:frame];
  if (!self) return nil;
    
  self.line = pLine;
  return self;
}


- (void)drawRect:(CGRect)rect
{
  switch (self.line)
  {
    case PARIS_METRO: [self drawMetroRect:rect];  break;
    case PARIS_TRAM:  [self drawTramRect:rect];   break;
    case PARIS_RER:   [self drawRERRect:rect];    break;
    case PARIS_TRANS: [self drawTransRect:rect];  break;
      
    case PARIS_M1:  [self drawM1Rect:rect];  break;
    case PARIS_M2:  [self drawM2Rect:rect];  break;
    case PARIS_M3:  [self drawM3Rect:rect];  break;
    case PARIS_M3b: [self drawM3bRect:rect]; break;
    case PARIS_M4:  [self drawM4Rect:rect];  break;
    case PARIS_M5:  [self drawM5Rect:rect];  break;
    case PARIS_M6:  [self drawM6Rect:rect];  break;
    case PARIS_M7:  [self drawM7Rect:rect];  break;
    case PARIS_M7b: [self drawM7bRect:rect]; break;
    case PARIS_M8:  [self drawM8Rect:rect];  break;
    case PARIS_M9:  [self drawM9Rect:rect];  break;
    case PARIS_M10: [self drawM10Rect:rect]; break;
    case PARIS_M11: [self drawM11Rect:rect]; break;
    case PARIS_M12: [self drawM12Rect:rect]; break;
    case PARIS_M13: [self drawM13Rect:rect]; break;
    case PARIS_M14: [self drawM14Rect:rect]; break;
    
    case PARIS_T1:  [self drawT1Rect:rect];  break;
    case PARIS_T2:  [self drawT2Rect:rect];  break;
    case PARIS_T3a: [self drawT3aRect:rect]; break;
    case PARIS_T3b: [self drawT3bRect:rect]; break;
    case PARIS_T4:  [self drawT4Rect:rect];  break;
    case PARIS_T5:  [self drawT5Rect:rect];  break;

    case PARIS_RER_A:  [self drawRERARect:rect]; break;
    case PARIS_RER_B:  [self drawRERBRect:rect]; break;
    case PARIS_RER_C:  [self drawRERCRect:rect]; break;
    case PARIS_RER_D:  [self drawRERDRect:rect]; break;
    case PARIS_RER_E:  [self drawRERERect:rect]; break;
    
    case PARIS_TRANS_H:  [self drawTransHRect:rect]; break;
    case PARIS_TRANS_J:  [self drawTransJRect:rect]; break;
    case PARIS_TRANS_K:  [self drawTransKRect:rect]; break;
    case PARIS_TRANS_L:  [self drawTransLRect:rect]; break;
    case PARIS_TRANS_N:  [self drawTransNRect:rect]; break;
    case PARIS_TRANS_P:  [self drawTransPRect:rect]; break;
    case PARIS_TRANS_R:  [self drawTransRRect:rect]; break;
    case PARIS_TRANS_U:  [self drawTransURect:rect]; break;
      
    default:
      break;
  }

}

@end
