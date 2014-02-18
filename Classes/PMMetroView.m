//
//  LMParisianCommuteStationView.m
//  test
//
//  Created by Peter Meuel on 13/02/2014.
//  Copyright (c) 2014 Peter Meuel. All rights reserved.
//



#define CURVE_PATH(path,x1,y1,x2,y2,x3,y3)    [path addCurveToPoint: CGPointMake(x1 * ratioW,y1 * ratioH) controlPoint1: CGPointMake(x2 * ratioW,y2 * ratioH) controlPoint2: CGPointMake(x3 * ratioW,y3 * ratioH)]

#define MOVE_PATH_TO(path , x , y)            [path moveToPoint: CGPointMake(x * ratioW , y * ratioH)];

#define LINE_PATH_TO(path , x , y)            [path addLineToPoint: CGPointMake(x * ratioW , y * ratioH)];

#define RGBA(r,g,b,a)                         [UIColor colorWithRed:r green:g blue:b alpha:a]

#define MAKE_RATIOS(rect, scale)              CGFloat ratioW = rect.size.width / scale; CGFloat ratioH = rect.size.height / scale;

#import "PMMetroView.h"

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
      
    default:
      break;
  }

}


-(void)drawM1Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000)
  
  //// Color Declarations
  UIColor* color1 = RGBA( 0.1, 0.089, 0.095, 1);
  UIColor* color0 = RGBA( 0.991, 0.774, 0.037, 1);
  
  //// Abstracted Attributes
  CGRect ovalRect = CGRectMake(0, 0, 1000 * ratioW, 1000 * ratioH);
  
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: ovalRect];
  [color0 setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  
  MOVE_PATH_TO(bezierPath , 577.03 , 763.99);
  LINE_PATH_TO(bezierPath , 577.03 , 234.02);
  LINE_PATH_TO(bezierPath , 484.67 , 234.02);
  
  CURVE_PATH(bezierPath , 342.11 , 317.29 , 460.74 , 252.74 , 403.66 , 288.05);
  
  LINE_PATH_TO(bezierPath , 309.82 , 332.43);
  LINE_PATH_TO(bezierPath , 345.84 , 413.48);
  LINE_PATH_TO(bezierPath , 373.78 , 399.1);
  
  CURVE_PATH(bezierPath , 464.46 , 347.4 , 393.16 , 389.49 , 446.4 , 361.74);
  
  LINE_PATH_TO(bezierPath , 464.46 , 763.99);
  LINE_PATH_TO(bezierPath , 577.03 , 763.99);

  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color1 setFill];
  [bezierPath fill];
}

- (void)drawM2Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000)
  
  //// Color Declarations
  UIColor* color  = RGBA( 0.037 , 0.312 , 0.619 , 1.000);
  UIColor* color2 = RGBA( 1.000 , 1.000 , 1.000 , 1.000);
  
  //// Abstracted Attributes
  CGRect ovalRect = CGRectMake(0, 0, 1000 * ratioW, 1000 * ratioH);
  
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: ovalRect];
  [color setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezierPath,676.44,740.95);
  
  LINE_PATH_TO(bezierPath,676.44,652.24);
  LINE_PATH_TO(bezierPath,457.76,652.24);
  
  CURVE_PATH(bezierPath , 544.84 , 552.49 , 464.65 , 621.53 , 517.89 , 577.21);
  CURVE_PATH(bezierPath , 666.46 , 362.48 , 608.7 , 494.49 , 666.46 , 453.3);
  CURVE_PATH(bezierPath , 485.7 , 201.87 , 666.46 , 254.43 , 578.79 , 201.87);
  CURVE_PATH(bezierPath , 315.98 , 267.25 , 414.34 , 201.87 , 367.08 , 222.86);
  
  LINE_PATH_TO(bezierPath,371.7,340.84);
  
  CURVE_PATH(bezierPath , 463.13 , 292.72 , 384.35 , 326.5 , 416.68 , 292.72);
  CURVE_PATH(bezierPath , 550.88 , 375.2 , 520.89 , 292.72 , 550.88 , 329.5);
  CURVE_PATH(bezierPath , 477.53 , 493.83 , 550.88 , 426.41 , 512.85 , 463.06);
  CURVE_PATH(bezierPath , 332.59 , 671.12 , 406.82 , 555.42 , 346.06 , 609.4);
  
  LINE_PATH_TO(bezierPath,332.59,740.99);
  LINE_PATH_TO(bezierPath,676.44,740.99);
  bezierPath.miterLimit = 4;
  
  [color2 setFill];
  [bezierPath fill];

}

- (void)drawM3Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000)
  
  //// Color Declarations
  UIColor* color0 = RGBA( 0.555, 0.53, 0.083, 1);
  UIColor* color1 = RGBA( 1, 1, 1, 1);
  
  //// Abstracted Attributes
  CGRect ovalRect = CGRectMake(0, 0, 1000 * ratioW, 1000 * ratioH);
  
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: ovalRect];
  [color0 setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  
  MOVE_PATH_TO(bezierPath,685.43,605.92);
  
  CURVE_PATH(bezierPath , 582.86 , 476.74 , 685.43 , 531.74 , 641.29 , 487.99);
  
  LINE_PATH_TO(bezierPath,582.86,475.39);
  
  CURVE_PATH(bezierPath , 668.24 , 357.5 , 639 , 454.35 , 668.24 , 412.19);
  CURVE_PATH(bezierPath , 498.24 , 223.84 , 668.24 , 286.89 , 606.83 , 223.84);
  CURVE_PATH(bezierPath , 339.61 , 271.23 , 436.59 , 223.84 , 385.33 , 241.04);
  
  LINE_PATH_TO(bezierPath,376.39,349.34);
  
  CURVE_PATH(bezierPath , 474.76 , 310.7 , 393.72 , 334.24 , 425.83 , 310.7);
  CURVE_PATH(bezierPath , 555.96 , 374.06 , 530.49 , 310.7 , 555.96 , 340.26);
  CURVE_PATH(bezierPath , 471.77 , 440.2 , 555.96 , 414.6 , 523.75 , 440.2);
  
  LINE_PATH_TO(bezierPath,416.03,440.2);
  LINE_PATH_TO(bezierPath,416.03,528.09);
  LINE_PATH_TO(bezierPath,470.96,528.09);
  
  CURVE_PATH(bezierPath , 571.65 , 608.29 , 525.22 , 528.09 , 571.65 , 547.35);
  CURVE_PATH(bezierPath , 471.78 , 686.24 , 571.65 , 653.31 , 533.5 , 686.24);
  CURVE_PATH(bezierPath , 367.19 , 651.88 , 426.79 , 686.24 , 389.94 , 668.76);

  LINE_PATH_TO(bezierPath,326.9,733.47);
  
  CURVE_PATH(bezierPath , 479.09 , 773.41 , 369.68 , 757.61 , 410.93 , 773.41);
  CURVE_PATH(bezierPath , 685.44 , 605.94 , 602.39 , 773.48 , 685.44 , 698.98);
  
  bezierPath.miterLimit = 4;
  
  [color1 setFill];
  [bezierPath fill];
}

- (void)drawM3bRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000)
  
  //// Color Declarations
  UIColor* color3 = RGBA( 0.537, 0.796, 0.839, 1);
  UIColor* color4 = RGBA( 0.103, 0.092, 0.095, 1);
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 1000 * ratioW, 1000 * ratioH)];
  [color3 setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  
  MOVE_PATH_TO(bezierPath,650.98,425.78);
  
  CURVE_PATH(bezierPath , 609.58 , 451.26 , 631.68 , 425.78 , 619.9  , 436.29);
  
  LINE_PATH_TO(bezierPath,609.58 ,371.11);
  LINE_PATH_TO(bezierPath,569.06 ,371.11);
  LINE_PATH_TO(bezierPath,569.06 ,583.5);
  LINE_PATH_TO(bezierPath,608.2  ,583.5);
  LINE_PATH_TO(bezierPath,608.2  ,575.49);
  
  CURVE_PATH(bezierPath , 640.89 , 587.27 , 615.8  , 582.7 , 629.41 , 587.27);
  CURVE_PATH(bezierPath , 708.1  , 504.96 , 689.91 , 587.27 , 708.1  , 539.33);
  CURVE_PATH(bezierPath , 650.98 , 425.77 , 708.1  , 467.8 , 691.35 , 425.77);
  
  LINE_PATH_TO(bezierPath,650.98,425.78);
  [bezierPath closePath];
  
  MOVE_PATH_TO(bezierPath,634.17,558.56);
  
  CURVE_PATH(bezierPath , 609.59 , 538.61 , 615.82 , 558.56 , 609.59 , 548.98);
  
  LINE_PATH_TO(bezierPath,609.59,488.27);
  
  CURVE_PATH(bezierPath , 617.28 , 468.4 , 609.59 , 479.42 , 610.25 , 475);
  CURVE_PATH(bezierPath , 635.99 , 460.62 , 621.74 , 464.12 , 627.87 , 460.62);
  CURVE_PATH(bezierPath , 665.76 , 510.59 , 661.44 , 460.64 , 665.76 , 489.96);
  CURVE_PATH(bezierPath , 634.17 , 558.56 , 665.76 , 531.54 , 660.07 , 558.56);
  
  LINE_PATH_TO(bezierPath,634.17,558.56);
  
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color4 setFill];
  [bezierPath fill];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezier2Path,785.49,389.54);
  
  CURVE_PATH(bezier2Path , 763.05 , 368.25 , 785.49 , 377.03 , 776.86 , 368.25);
  CURVE_PATH(bezier2Path , 740.36 , 389.54 , 749.3 , 368.25 , 740.36 , 377.03);
  CURVE_PATH(bezier2Path , 763.05 , 410.76 , 740.36 , 401.83 , 749.3 , 410.76);
  CURVE_PATH(bezier2Path , 785.49 , 389.54 , 776.86 , 410.76 , 785.49 , 401.83);
  
  LINE_PATH_TO(bezier2Path,785.49,389.54);
  
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color4 setFill];
  [bezier2Path fill];
  
  
  //// Rectangle Drawing
  UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(742.77 * ratioW, 430.2 * ratioH, 40.52 * ratioW, 153.31 * ratioH)];
  [color4 setFill];
  [rectanglePath fill];
  
  
  //// Bezier 3 Drawing
  UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
  
  MOVE_PATH_TO(bezier3Path,926.78,537.61);
  
  CURVE_PATH(bezier3Path , 892.72 , 493.95 , 926.78 , 514.39 , 913.12 , 501.74);
  
  LINE_PATH_TO(bezier3Path,873.98,487.08);
  
  CURVE_PATH(bezier3Path , 857.84 , 471.92 , 864.33 , 483.6 , 857.84 , 479.8);
  CURVE_PATH(bezier3Path , 879.12 , 457.34 , 857.84 , 462.79 , 865.59 , 457.34);
  CURVE_PATH(bezier3Path , 909.97 , 466.55 , 888.85 , 457.34 , 901.22 , 460.64);
  
  LINE_PATH_TO(bezier3Path,922.33,436.86);
  
  CURVE_PATH(bezier3Path , 881.08 , 426.77 , 914.57 , 432.76 , 900.24 , 426.77);
  CURVE_PATH(bezier3Path , 820.66 , 478.52 , 845.17 , 426.77 , 820.66 , 449.37);
  CURVE_PATH(bezier3Path , 851.46 , 518.96 , 820.66 , 496.66 , 829.79 , 510.59);
  
  LINE_PATH_TO(bezier3Path,869.6,525.8);
  
  CURVE_PATH(bezier3Path , 889.21 , 542.84 , 877.58 , 528.94 , 889.21 , 532.09);
  CURVE_PATH(bezier3Path , 865.59 , 558.19 , 889.21 , 554.84 , 876.19 , 558.19);
  CURVE_PATH(bezier3Path , 829.82 , 546.75 , 853.45 , 558.19 , 839.61 , 553.62);
  
  LINE_PATH_TO(bezier3Path,817.39,576.99);
  
  CURVE_PATH(bezier3Path , 862.36 , 588.61 , 826.02 , 582.1 , 843.2 , 588.61);
  CURVE_PATH(bezier3Path , 926.76 , 537.6 , 902.56 , 588.63 , 926.76 , 567.54);
  
  LINE_PATH_TO(bezier3Path,926.78,537.61);
  
  [bezier3Path closePath];
  bezier3Path.miterLimit = 4;
  
  [color4 setFill];
  [bezier3Path fill];
  
  
  //// Bezier 4 Drawing
  UIBezierPath* bezier4Path = [UIBezierPath bezierPath];

  MOVE_PATH_TO(bezier4Path,512.92,603.61);
  
  CURVE_PATH(bezier4Path , 410.09 , 474.63 , 512.92 , 529.3 , 468.53 , 485.79);
  
  LINE_PATH_TO(bezier4Path,410.09,473.06);
  
  CURVE_PATH(bezier4Path , 495.73 , 355.23 , 466.33 , 451.99 , 495.73 , 409.83);
  CURVE_PATH(bezier4Path , 326.11 , 221.53 , 495.73 , 284.68 , 434.22 , 221.53);
  CURVE_PATH(bezier4Path , 167.11 , 268.96 , 263.8 , 221.53 , 212.74 , 238.87);
  
  LINE_PATH_TO(bezier4Path,203.83,346.85);
  
  CURVE_PATH(bezier4Path , 302.28 , 308.7 , 221.17 , 332 , 253.35 , 308.7);
  CURVE_PATH(bezier4Path , 383.24 , 371.64 , 357.57 , 308.7 , 383.24 , 337.99);
  CURVE_PATH(bezier4Path , 299.13 , 437.75 , 383.24 , 412.16 , 350.85 , 437.75);
  
  LINE_PATH_TO(bezier4Path,243.69,437.75);
  
  LINE_PATH_TO(bezier4Path,243.69,525.53);
  
  LINE_PATH_TO(bezier4Path,298.33,525.53);
  
  CURVE_PATH(bezier4Path , 398.89 , 605.76 , 352.53 , 525.53 , 398.89 , 545.02);
  CURVE_PATH(bezier4Path , 299.13 , 683.87 , 398.89 , 650.92 , 360.64 , 683.87);
  CURVE_PATH(bezier4Path , 194.85 , 649.42 , 254.09 , 683.87 , 217.29 , 666.57);
  
  LINE_PATH_TO(bezier4Path,154.26,731.11);
  
  CURVE_PATH(bezier4Path , 306.53 , 770.9 , 197.04 , 755.06 , 238.36 , 770.9);
  CURVE_PATH(bezier4Path , 512.92 , 603.61 , 429.6  , 770.93 , 512.92 , 696.69);
  
  [bezier4Path closePath];
  
  bezier4Path.miterLimit = 4;
  
  [color4 setFill];
  [bezier4Path fill];

}

- (void)drawM4Rect:(CGRect)rect
{
  
  MAKE_RATIOS(self.frame, 1000)
  
  //// Color Declarations
  UIColor* color0 = RGBA( 0.683, 0.158, 0.48, 1);
  UIColor* color1 = RGBA( 1, 1, 1, 1);
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 1000 * ratioW, 1000 * ratioH)];
  [color0 setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];

  MOVE_PATH_TO(bezierPath , 672.79 ,  653.15);;
  LINE_PATH_TO(bezierPath,672.79,570.59);
  LINE_PATH_TO(bezierPath,607.48,570.59);
  LINE_PATH_TO(bezierPath,607.48,233.43);
  LINE_PATH_TO(bezierPath,472.38,233.43);
  LINE_PATH_TO(bezierPath,266.56,554.63);
  LINE_PATH_TO(bezierPath,266.56,653.14);
  LINE_PATH_TO(bezierPath,505.39,653.14);
  LINE_PATH_TO(bezierPath,505.39,763.35);
  LINE_PATH_TO(bezierPath,607.46,763.35);
  LINE_PATH_TO(bezierPath,607.46,653.15);
  LINE_PATH_TO(bezierPath,672.78,653.15);
  MOVE_PATH_TO(bezierPath , 505.4  ,  570.59);;
  LINE_PATH_TO(bezierPath,357.41,570.59);
  LINE_PATH_TO(bezierPath,465.53,400.83);
  
  CURVE_PATH(bezierPath , 503.75 , 326.51 , 486.45 , 367.71 , 501.6  , 335.44);

  LINE_PATH_TO(bezierPath,505.39,326.51);
  LINE_PATH_TO(bezierPath,505.39,570.58);
  LINE_PATH_TO(bezierPath,505.4 ,570.59);
  
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color1 setFill];
  [bezierPath fill];
}

- (void)drawM5Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000)
  
  //// Color Declarations
  UIColor* color = RGBA( 0.923, 0.488, 0.205, 1);
  UIColor* color2 = RGBA( 0.103, 0.092, 0.095, 1);
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 1000 * ratioW, 1000 * ratioH)];
  [color setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  [bezierPath moveToPoint:     CGPointMake(679.71 * ratioW, 592.75 * ratioH)];
  CURVE_PATH(bezierPath , 476.44 , 425.5  , 679.71 , 513.26 , 621.29 , 433.07);
  
  [bezierPath addLineToPoint:  CGPointMake(461.31 * ratioW, 424.79 * ratioH)];
  [bezierPath addLineToPoint:  CGPointMake(468.73 * ratioW, 323.44 * ratioH)];
  [bezierPath addLineToPoint:  CGPointMake(659.51 * ratioW, 323.44 * ratioH)];
  [bezierPath addLineToPoint:  CGPointMake(659.51 * ratioW, 235.52 * ratioH)];
  [bezierPath addLineToPoint:  CGPointMake(380.99 * ratioW, 235.52 * ratioH)];
  [bezierPath addLineToPoint:  CGPointMake(359.95 * ratioW, 511.01 * ratioH)];
  [bezierPath addLineToPoint:  CGPointMake(442.49 * ratioW, 511.73 * ratioH)];
  CURVE_PATH(bezierPath , 565.47 , 603.38 , 540.1  , 512.71 , 565.47 , 565.04);
  
  CURVE_PATH(bezierPath , 472.6  , 689    , 565.47 , 665.54 , 513.84 , 689   );
  
  CURVE_PATH(bezierPath , 371.99 , 655.09 , 427.42 , 689    , 397.57 , 672.39);
  
  LINE_PATH_TO(bezierPath,333.1  ,737.78);
  CURVE_PATH(bezierPath , 478.6  , 776.12 , 374.19 , 760.95 , 422.37 , 776.12);
  
  CURVE_PATH(bezierPath , 679.72 , 592.75 , 599.37 , 776.08 , 679.72 , 694.04);
  
  bezierPath.miterLimit = 4;
  
  [color2 setFill];
  [bezierPath fill];
}

- (void)drawM6Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000)
  
  //// Color Declarations
  UIColor* color3 = RGBA( 0.103, 0.092, 0.095, 1);
  UIColor* color4 = RGBA( 0.452, 0.721, 0.484, 1);
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 1000 * ratioW, 1000 * ratioH)];
  [color4 setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  
  MOVE_PATH_TO(bezierPath , 672.16 , 570.56)
  
  CURVE_PATH(bezierPath , 515.05 , 413.55 , 672.16 , 471.25 , 601.64 , 413.55);
  CURVE_PATH(bezierPath , 407.26 , 449.62 , 459.1  , 413.55 , 425.16 , 433.84);
  CURVE_PATH(bezierPath , 541.67 , 289.75 , 413.96 , 343.1  , 468.7  , 289.75);
  CURVE_PATH(bezierPath , 612.7  , 302.64 , 571.44 , 289.75 , 598.64 , 296.45);

  LINE_PATH_TO(bezierPath, 629.36, 212.52);
  
  CURVE_PATH(bezierPath , 550.53 , 203.59 , 607.65 , 207.11 , 580.44 , 203.59);
  CURVE_PATH(bezierPath , 299.17 , 513.48 , 383.94 , 203.59 , 299.17 , 329.48);
  CURVE_PATH(bezierPath , 492.75 , 753.79 , 299.17 , 653.83 , 350.07 , 753.79);
  CURVE_PATH(bezierPath , 672.16 , 570.56 , 601.64 , 753.79 , 672.16 , 676.23);
  
  [bezierPath closePath];
  
  MOVE_PATH_TO(bezierPath, 566.35, 581.84);
  
  CURVE_PATH(bezierPath , 488.95 , 670.27 ,566.35 , 627.47 , 540.1  , 670.27);
  CURVE_PATH(bezierPath , 408    , 571.15 ,436.37 , 670.27 , 408    , 621.5 );
  CURVE_PATH(bezierPath , 414    , 526.18 ,408    , 555.51 , 408    , 535.19);
  CURVE_PATH(bezierPath , 483.06 , 497    ,424.47 , 509.6  , 450.8  , 497   );
  CURVE_PATH(bezierPath , 566.35 , 581.84 ,533.98 , 497    , 566.35 , 532.19);

  LINE_PATH_TO(bezierPath, 566.35, 581.84);
  
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color3 setFill];
  [bezierPath fill];
}

- (void)drawM7Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000)
  
  //// Color Declarations
  UIColor* color5 = RGBA( 0.103, 0.092, 0.095, 1);
  UIColor* color6 = RGBA( 0.928, 0.565, 0.661, 1);
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 1000 * ratioW , 1000 * ratioH)];
  [color6 setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  
  MOVE_PATH_TO(bezierPath, 678, 337.67);
  
  LINE_PATH_TO(bezierPath , 678    , 251.37);
  LINE_PATH_TO(bezierPath , 307.29 , 251.37);
  LINE_PATH_TO(bezierPath , 307.29 , 339.92);
  LINE_PATH_TO(bezierPath , 564.67 , 339.92);
  LINE_PATH_TO(bezierPath , 435.65 , 580.12);
  
  CURVE_PATH(bezierPath, 370.34, 781.48,389.07, 666.64,370.34, 711.36);
  
  LINE_PATH_TO(bezierPath, 491.23, 781.48);
  
  CURVE_PATH(bezierPath, 678, 337.67,491.22, 698.12,561.58, 539.75);
  
  bezierPath.miterLimit = 4;
  
  [color5 setFill];
  [bezierPath fill];
}

- (void)drawM7bRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000)
  
  //// Color Declarations
  UIColor* color7 = RGBA( 0.103, 0.092, 0.095, 1);
  UIColor* color8 = RGBA( 0.452, 0.721, 0.484, 1);
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 1000 * ratioW, 1000 * ratioH)];
  [color8 setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  
  MOVE_PATH_TO(bezierPath , 531.97, 321.13);
  
  LINE_PATH_TO(bezierPath , 531.97, 234.69);
  LINE_PATH_TO(bezierPath , 161.32, 234.69);
  LINE_PATH_TO(bezierPath , 161.32, 323.23);
  LINE_PATH_TO(bezierPath , 418.44, 323.23);
  LINE_PATH_TO(bezierPath , 289.58, 563.48);

  CURVE_PATH(bezierPath, 224.21, 764.64,243, 649.73,224.21, 694.83);

  LINE_PATH_TO(bezierPath,345.09, 764.64);
  
  CURVE_PATH(bezierPath, 531.97, 321.13,345.12, 681.18,415.45, 522.96);
  
  bezierPath.miterLimit = 4;
  
  [color7 setFill];
  [bezierPath fill];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  
  MOVE_PATH_TO(bezier2Path, 627.25, 496.88);
  
  CURVE_PATH(bezier2Path, 585.63, 522.25,607.57, 496.88,595.95, 507.38);
  
  LINE_PATH_TO(bezier2Path, 585.63, 442.21);
  LINE_PATH_TO(bezier2Path, 545.27, 442.21);
  LINE_PATH_TO(bezier2Path, 545.27, 654.68);
  LINE_PATH_TO(bezier2Path, 584.17, 654.68);
  LINE_PATH_TO(bezier2Path, 584.17, 646.58);
  
  CURVE_PATH(bezier2Path, 617.08, 658.44,591.92, 653.72,605.38, 658.44);
  CURVE_PATH(bezier2Path, 684.07, 575.91,665.93, 658.44,684.07, 610.36);
  CURVE_PATH(bezier2Path, 627.25, 496.87,684.07, 538.88,667.46, 496.87);
  
  LINE_PATH_TO(bezier2Path, 627.25, 496.88);
  
  [bezier2Path closePath];
  
  MOVE_PATH_TO(bezier2Path, 610.29, 629.58);
  
  CURVE_PATH(bezier2Path, 585.66, 609.51,591.93, 629.58,585.66, 620.14);
  
  LINE_PATH_TO(bezier2Path,585.66,559.25);
  
  CURVE_PATH(bezier2Path, 593.18, 539.43,585.66, 550.27,586.53, 546.17);
  CURVE_PATH(bezier2Path, 612.05, 531.61,597.77, 535.14,604.07, 531.61);
  CURVE_PATH(bezier2Path, 641.94, 581.63,637.64, 531.62,641.94, 560.98);
  CURVE_PATH(bezier2Path, 610.28, 629.58,641.94, 602.54,636.15, 629.58);

  LINE_PATH_TO(bezier2Path, 610.29, 629.58);
  
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color7 setFill];
  [bezier2Path fill];
  
  
  //// Bezier 3 Drawing
  UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezier3Path,761.68,460.42);
  CURVE_PATH(bezier3Path,739.15, 439.21,761.68, 448.06,752.96, 439.21);
  CURVE_PATH(bezier3Path,716.71, 460.42,725.48, 439.21,716.71, 448.06);
  CURVE_PATH(bezier3Path,739.15, 481.75,716.71, 472.85,725.48, 481.75);
  CURVE_PATH(bezier3Path,761.68, 460.42,752.96, 481.73,761.68, 472.85);
  LINE_PATH_TO(bezier3Path,761.68,460.42);
  [bezier3Path closePath];
  bezier3Path.miterLimit = 4;
  
  [color7 setFill];
  [bezier3Path fill];
  
  
  //// Bezier 4 Drawing
  UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezier4Path,718.96,501.24);
  LINE_PATH_TO(bezier4Path,759.17,501.24);
  LINE_PATH_TO(bezier4Path,759.17,654.68);
  LINE_PATH_TO(bezier4Path,718.96,654.68);
  LINE_PATH_TO(bezier4Path,718.96,501.24);
  [bezier4Path closePath];
  bezier4Path.miterLimit = 4;
  
  [color7 setFill];
  [bezier4Path fill];
  
  
  //// Bezier 5 Drawing
  UIBezierPath* bezier5Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezier5Path,902.74,608.63);
  CURVE_PATH(bezier5Path,868.66, 565.04,902.74, 585.34,889.35, 572.83);
  LINE_PATH_TO(bezier5Path,849.86,558.17);
  CURVE_PATH(bezier5Path,833.87, 542.97,840.14, 554.7,833.87, 550.97);
  CURVE_PATH(bezier5Path,855.14, 528.35,833.87, 533.76,841.77, 528.35);
  CURVE_PATH(bezier5Path,886.23, 537.56,865.01, 528.35,877.24, 531.65);
  LINE_PATH_TO(bezier5Path,898.5,507.91);
  CURVE_PATH(bezier5Path,857.11, 497.89,890.38, 503.88,876.42, 497.89);
  CURVE_PATH(bezier5Path,796.84, 549.64,821.21, 497.89,796.84, 520.57);
  CURVE_PATH(bezier5Path,827.64, 589.93,796.84, 567.56,805.7, 581.67);
  LINE_PATH_TO(bezier5Path,845.63,596.88);
  CURVE_PATH(bezier5Path,865.23, 613.88,853.76, 600.17,865.23, 603.24);
  CURVE_PATH(bezier5Path,841.77, 629.38,865.23, 625.88,852.22, 629.38);
  CURVE_PATH(bezier5Path,805.7, 617.87,829.63, 629.38,815.5, 624.74);
  LINE_PATH_TO(bezier5Path,793.42,648.03);
  CURVE_PATH(bezier5Path,838.53, 659.69,801.9, 653.17,819.24, 659.69);
  CURVE_PATH(bezier5Path,902.74, 608.62,878.76, 659.66,902.74, 638.55);
  LINE_PATH_TO(bezier5Path,902.74,608.63);
  [bezier5Path closePath];
  bezier5Path.miterLimit = 4;
  
  [color7 setFill];
  [bezier5Path fill];
  
  

}

- (void)drawM8Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000)
  
  //// Color Declarations
  UIColor* color9  = RGBA( 0.756, 0.602, 0.769, 1);
  UIColor* color10 = RGBA( 0.103, 0.092, 0.095, 1);
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 1000 * ratioW, 1000 * ratioH)];
  [color9 setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezierPath, 689.21, 614.92);
  
  CURVE_PATH(bezierPath, 597.64, 480.07,689.21, 545.3,646.47, 503.11);
  CURVE_PATH(bezierPath, 672.84, 362.17,647.21, 449.89,672.84, 411.62);
  CURVE_PATH(bezierPath, 502.38, 225.34,672.84, 271.18,595.47, 225.34);
  CURVE_PATH(bezierPath, 331.97, 374,411.51, 225.34,331.97, 286.27);
  CURVE_PATH(bezierPath, 406.21, 489.54,331.97, 428.8,360.52, 461.03);
  CURVE_PATH(bezierPath, 315.43, 627.69,355.19, 515.84,315.43, 557.26);
  CURVE_PATH(bezierPath, 500.01, 778.6,315.43, 708.09,382.12, 778.6);
  CURVE_PATH(bezierPath, 689.2, 614.92,608.87, 778.58,689.2, 715.64);
  
  MOVE_PATH_TO(bezierPath, 571.41, 368.83);
  
  CURVE_PATH(bezierPath,513.6, 445.39,571.41, 401.95,541.39, 432.51);
  CURVE_PATH(bezierPath,436.29, 364.33,479.89, 431.12,436.29, 407.77);
  CURVE_PATH(bezierPath,503.82, 302.04,436.29, 327.64,462.52, 302.04);
  CURVE_PATH(bezierPath,571.4, 368.83,547.35, 302.05,571.4, 331.95);
  
  LINE_PATH_TO(bezierPath,571.41, 368.83);

  [bezierPath closePath];
  
  MOVE_PATH_TO(bezierPath, 579.63, 623.25);
  
  CURVE_PATH(bezierPath,501.53, 700.62,579.63, 665.29,551.86, 700.62);
  CURVE_PATH(bezierPath,421.98, 615.73,450.43, 700.62,421.98, 659.16);
  CURVE_PATH(bezierPath,491.04, 526.41,421.98, 574.54,456.52, 540.02);
  CURVE_PATH(bezierPath,579.63, 623.26,536.03, 548.95,579.63, 575.21);

  LINE_PATH_TO(bezierPath, 579.63, 623.25);
  
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color10 setFill];
  [bezierPath fill];
  
  

}

- (void)drawM9Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000)
  
  //// Color Declarations
  UIColor* color11 = RGBA( 0.797, 0.755, 0.032, 1);
  UIColor* color12 = RGBA( 0.103, 0.092, 0.095, 1);
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 1000 * ratioW, 1000 * ratioH)];
  [color11 setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  
  MOVE_PATH_TO(bezierPath,314.19, 406.98);
  
  CURVE_PATH(bezierPath,470.93, 563.9,314.19, 506.14,384.63, 563.9);
  CURVE_PATH(bezierPath,579.16, 528.09,526.75, 563.9,561.25, 543.62);
  CURVE_PATH(bezierPath,444.57, 687.82,572.43, 634.42,517.05, 687.82);
  CURVE_PATH(bezierPath,373.25, 675.06,414.82, 687.82,387.7, 681.08);
  
  LINE_PATH_TO(bezierPath,356.73, 765.15);
  
  CURVE_PATH(bezierPath,435.66, 774.18,378.66, 770.26,405.62, 774.18);
  CURVE_PATH(bezierPath,686.95, 463.98,602.4, 774.18,686.95, 648);
  CURVE_PATH(bezierPath,493.18, 223.9,686.95, 323.74,636.09, 223.9);
  CURVE_PATH(bezierPath,314.19, 406.98,384.63, 223.91,314.19, 301.24);
  
  MOVE_PATH_TO(bezierPath,419.84, 395.85);
  
  CURVE_PATH(bezierPath,496.86, 307.27,419.84, 349.93,446.23, 307.27);
  CURVE_PATH(bezierPath,578.41, 406.23,549.25, 307.27,578.41, 356.08);
  CURVE_PATH(bezierPath,572.41, 451.32,578.41, 422.24,578.41, 442.4);
  CURVE_PATH(bezierPath,496.86, 486.74,561.98, 467.92,529.02, 486.74);
  CURVE_PATH(bezierPath,419.84, 395.85,446.07, 486.74,419.84, 445.46);
  
  LINE_PATH_TO(bezierPath,419.84, 395.85);
  
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color12 setFill];
  [bezierPath fill];
  
  

}

- (void)drawM10Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000)
  
  //// Color Declarations
  UIColor* color13 = RGBA( 0.864, 0.649, 0.121, 1);
  UIColor* color14 = RGBA( 0.103, 0.092, 0.095, 1);
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 1000*ratioW, 1000*ratioH)];
  [color13 setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezierPath,379.74,765.04);
  LINE_PATH_TO(bezierPath,379.74,235.13);
  LINE_PATH_TO(bezierPath,287.37,235.13);
  CURVE_PATH(bezierPath,144.85, 318.57,263.32, 253.85,206.28, 289.18);
  LINE_PATH_TO(bezierPath,112.47,333.49);
  LINE_PATH_TO(bezierPath,148.53,414.67);
  LINE_PATH_TO(bezierPath,176.39,400.25);
  CURVE_PATH(bezierPath,267.14, 348.55,195.76, 390.47,249.07, 362.66);
  LINE_PATH_TO(bezierPath,267.14,765.05);
  LINE_PATH_TO(bezierPath,379.74,765.05);
  bezierPath.miterLimit = 4;
  
  [color14 setFill];
  [bezierPath fill];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezier2Path,649.64,224.66);
  CURVE_PATH(bezier2Path,455.12, 501.68,489.8, 224.66,455.12, 379.26);
  CURVE_PATH(bezier2Path,646.58, 778.72,455.12, 624.11,486.72, 778.72);
  CURVE_PATH(bezier2Path,841.02, 501.68,806.64, 778.72,841.02, 624.11);
  CURVE_PATH(bezier2Path,649.64, 224.66,841.04, 379.27,809.58, 224.66);
  LINE_PATH_TO(bezier2Path,649.64,224.66);
  [bezier2Path closePath];
  MOVE_PATH_TO(bezier2Path,648.12,690.02);
  CURVE_PATH(bezier2Path,569.3, 501.69,573.24, 690.02,569.3, 555.09);
  CURVE_PATH(bezier2Path,648.12, 314.04,569.3, 447.5,571.55, 314.04);
  CURVE_PATH(bezier2Path,726.3, 501.69,723.96, 314.04,726.3, 446.11);
  CURVE_PATH(bezier2Path,648.12, 690.02,726.3, 554.34,723.37, 690.02);
  LINE_PATH_TO(bezier2Path,648.12,690.02);
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color14 setFill];
  [bezier2Path fill];
  
  

}

- (void)drawM11Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000)

  //// Color Declarations
  UIColor* color17 = RGBA( 1, 1, 1, 1);
  UIColor* color18 = RGBA( 0.472, 0.297, 0.108, 1);
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 1000 * ratioW, 1000 * ratioH)];
  [color18 setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezierPath,430,764.15);
  LINE_PATH_TO(bezierPath,430,234.2);
  LINE_PATH_TO(bezierPath,337.63,234.2);
  CURVE_PATH(bezierPath,195.04, 317.44,313.65, 252.97,256.61, 288.22);
  LINE_PATH_TO(bezierPath,162.77,332.55);
  LINE_PATH_TO(bezierPath,198.68,413.66);
  LINE_PATH_TO(bezierPath,226.47,399.31);
  CURVE_PATH(bezierPath,317.3, 347.58,246, 389.51,299.39, 361.81);
  LINE_PATH_TO(bezierPath,317.3,764.15);
  LINE_PATH_TO(bezierPath,430.01,764.15);
  bezierPath.miterLimit = 4;
  
  [color17 setFill];
  [bezierPath fill];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezier2Path,759.6,764.15);
  LINE_PATH_TO(bezier2Path,759.6,234.2);
  LINE_PATH_TO(bezier2Path,667.52,234.2);
  CURVE_PATH(bezier2Path,525.24, 317.44,643.56, 252.97,586.65, 288.22);
  LINE_PATH_TO(bezier2Path,493.03,332.55);
  LINE_PATH_TO(bezier2Path,528.94,413.66);
  LINE_PATH_TO(bezier2Path,556.67,399.31);
  CURVE_PATH(bezier2Path,647.23, 347.58,576.09, 389.51,629.26, 361.81);
  LINE_PATH_TO(bezier2Path,647.23,764.15);
  LINE_PATH_TO(bezier2Path,759.61,764.15);
  LINE_PATH_TO(bezier2Path,759.6,764.15);
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color17 setFill];
  [bezier2Path fill];
  
  

}

- (void)drawM12Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000)
  
  //// Color Declarations
  UIColor* color19 = RGBA( 0.056, 0.429, 0.222, 1);
  UIColor* color20 = RGBA( 1, 1, 1, 1);
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 1000*ratioW, 1000*ratioH)];
  [color19 setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezierPath,379.88,753.27);
  LINE_PATH_TO(bezierPath,379.88,223.12);
  LINE_PATH_TO(bezierPath,287.4,223.12);
  CURVE_PATH(bezierPath,144.82, 306.63,263.47, 241.98,206.34, 277.35);
  LINE_PATH_TO(bezierPath,112.59,321.45);
  LINE_PATH_TO(bezierPath,148.53,402.62);
  LINE_PATH_TO(bezierPath,176.36,388.36);
  CURVE_PATH(bezierPath,267.28, 336.58,195.89, 378.57,249.22, 350.76);
  LINE_PATH_TO(bezierPath,267.28,753.27);
  LINE_PATH_TO(bezierPath,379.88,753.27);
  bezierPath.miterLimit = 4;
  
  [color20 setFill];
  [bezierPath fill];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezier2Path,812.7,753.27);
  LINE_PATH_TO(bezier2Path,812.7,664.57);
  LINE_PATH_TO(bezier2Path,594.34,664.57);
  CURVE_PATH(bezier2Path,681.45, 564.69,601.27, 633.71,654.3, 589.46);
  CURVE_PATH(bezier2Path,803.13, 374.85,745.32, 506.97,803.13, 465.5);
  CURVE_PATH(bezier2Path,622.07, 214.17,803.13, 266.7,715.04, 214.17);
  CURVE_PATH(bezier2Path,452.54, 279.38,550.78, 214.17,503.42, 235.41);
  LINE_PATH_TO(bezier2Path,507.91,352.91);
  CURVE_PATH(bezier2Path,599.51, 304.97,520.7, 338.93,552.93, 304.97);
  CURVE_PATH(bezier2Path,687.3, 387.54,657.42, 304.97,687.3, 341.86);
  CURVE_PATH(bezier2Path,613.87, 506.15,687.3, 438.64,649.02, 475.25);
  CURVE_PATH(bezier2Path,468.95, 683.26,543.26, 567.67,482.43, 621.79);
  LINE_PATH_TO(bezier2Path,468.95,753.27);
  LINE_PATH_TO(bezier2Path,812.7,753.27);
  LINE_PATH_TO(bezier2Path,812.7,753.27);
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color20 setFill];
  [bezier2Path fill];
  
  

}

- (void)drawM13Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000)
  
  //// Color Declarations
  UIColor* color21 = RGBA( 0.537, 0.796, 0.839, 1);
  UIColor* color22 = RGBA( 0.103, 0.092, 0.095, 1);
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 1000*ratioW, 1000*ratioH)];
  [color21 setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezierPath,387.5,764.11);
  LINE_PATH_TO(bezierPath,387.5,234.03);
  LINE_PATH_TO(bezierPath,295.14,234.03);
  CURVE_PATH(bezierPath,152.41, 317.13,271.05, 252.73,213.95, 287.9);
  LINE_PATH_TO(bezierPath,120.12,332.11);
  LINE_PATH_TO(bezierPath,156.21,413.71);
  LINE_PATH_TO(bezierPath,183.99,399.45);
  CURVE_PATH(bezierPath,274.77, 347.84,203.45, 389.7,256.82, 362.01);
  LINE_PATH_TO(bezierPath,274.77,764.12);
  LINE_PATH_TO(bezierPath,387.49,764.12);
  bezierPath.miterLimit = 4;
  
  [color22 setFill];
  [bezierPath fill];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezier2Path,821.22,606.93);
  CURVE_PATH(bezier2Path,718.36, 478.07,821.22, 532.78,776.92, 489.36);
  LINE_PATH_TO(bezier2Path,718.36,476.61);
  CURVE_PATH(bezier2Path,803.79, 359.04,774.63, 455.61,803.79, 413.74);
  CURVE_PATH(bezier2Path,634.28, 225,803.79, 287.89,742.29, 225);
  CURVE_PATH(bezier2Path,475.13, 272.21,571.83, 225,520.9, 242.27);
  LINE_PATH_TO(bezier2Path,511.84,350.09);
  CURVE_PATH(bezier2Path,610.19, 311.9,529.08, 335.87,561.29, 311.9);
  CURVE_PATH(bezier2Path,691.22, 375.6,665.78, 311.9,691.22, 341.89);
  CURVE_PATH(bezier2Path,607.09, 441.47,691.22, 415.92,659, 441.47);
  LINE_PATH_TO(bezier2Path,551.58,441.47);
  LINE_PATH_TO(bezier2Path,551.58,529.05);
  LINE_PATH_TO(bezier2Path,606.38,529.05);
  CURVE_PATH(bezier2Path,707.02, 609.15,660.58, 529.05,707.02, 548.5);
  CURVE_PATH(bezier2Path,607.09, 687.82,707.02, 654.07,668.82, 687.82);
  CURVE_PATH(bezier2Path,502.92, 653.36,562.32, 687.82,525.49, 670.55);
  LINE_PATH_TO(bezier2Path,462.32,734.96);
  CURVE_PATH(bezier2Path,614.69, 774.57,505.12, 758.88,546.38, 774.57);
  CURVE_PATH(bezier2Path,821.21, 606.92,737.84, 774.56,821.21, 699.69);
  LINE_PATH_TO(bezier2Path,821.22,606.93);
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color22 setFill];
  [bezier2Path fill];
  
  

}

- (void)drawM14Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000)
  
  //// Color Declarations
  UIColor* color23 = RGBA( 1.000, 1.000, 1.000, 1.000);
  UIColor* color24 = RGBA( 0.307, 0.064, 0.426, 1.000);
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(0, 0, 1000*ratioW, 1000*ratioH)];
  [color24 setFill];
  [ovalPath fill];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezierPath,381.97,765.05);
  LINE_PATH_TO(bezierPath,381.97,235.26);
  LINE_PATH_TO(bezierPath,289.55,235.26);
  CURVE_PATH(bezierPath,147.03, 318.6,265.6, 253.98,208.66, 289.35);
  LINE_PATH_TO(bezierPath,114.73,333.37);
  LINE_PATH_TO(bezierPath,150.68,414.56);
  LINE_PATH_TO(bezierPath,178.55,400.4);
  CURVE_PATH(bezierPath,269.32, 348.57,197.93, 390.57,251.4, 362.96);
  LINE_PATH_TO(bezierPath,269.32,765.03);
  LINE_PATH_TO(bezierPath,381.96,765.03);
  bezierPath.miterLimit = 4;
  
  [color23 setFill];
  [bezierPath fill];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO(bezier2Path,845.57,654.46);
  LINE_PATH_TO(bezier2Path,845.57,571.81);
  LINE_PATH_TO(bezier2Path,780.34,571.81);
  LINE_PATH_TO(bezier2Path,780.34,234.78);
  LINE_PATH_TO(bezier2Path,645.17,234.78);
  LINE_PATH_TO(bezier2Path,439.5,556.01);
  LINE_PATH_TO(bezier2Path,439.5,654.46);
  LINE_PATH_TO(bezier2Path,678.2,654.46);
  LINE_PATH_TO(bezier2Path,678.2,764.76);
  LINE_PATH_TO(bezier2Path,780.34,764.76);
  LINE_PATH_TO(bezier2Path,780.34,654.46);
  LINE_PATH_TO(bezier2Path,845.57,654.46);
  MOVE_PATH_TO(bezier2Path,678.2,571.81);
  LINE_PATH_TO(bezier2Path,530.36,571.81);
  LINE_PATH_TO(bezier2Path,638.42,402.27);
  CURVE_PATH(bezier2Path,676.68, 327.8,659.39, 369.11,674.55, 336.88);
  LINE_PATH_TO(bezier2Path,678.2,327.8);
  LINE_PATH_TO(bezier2Path,678.2,571.81);
  LINE_PATH_TO(bezier2Path,678.2,571.81);
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color23 setFill];
  [bezier2Path fill];
  
  

}

@end
