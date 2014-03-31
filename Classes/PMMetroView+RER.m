//
//  PMMetroView+RER.m
//  TestMetroView
//
//  Created by Peter MEUEL on 31/03/2014.
//  Copyright (c) 2014 Peter MEUEL. All rights reserved.
//

#import "PMMetroView+RER.h"

@implementation PMMetroView (RER)

-(void)drawRERARect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color16 = [UIColor colorWithRed: 0.88 green: 0 blue: 0.136 alpha: 1];
  UIColor* color17 = [UIColor colorWithRed: 0.894 green: 0 blue: 0.133 alpha: 1];
  UIColor* color18 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Oval Drawing
  CGRect ovalRect        = CGRectMake(34 * ratioW, 34 * ratioH, 930 * ratioW, 930 * ratioH);
  UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:ovalRect];

  [color18 setFill];
  [ovalPath fill];
  [color16 setStroke];
  ovalPath.lineWidth = 70 * ratioH;
  [ovalPath stroke];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 268.36 , 714.66);
  LINE_PATH_TO( bezierPath , 381.26 , 714.55 );
  LINE_PATH_TO( bezierPath , 411.29 , 623.71 );
  LINE_PATH_TO( bezierPath , 588.15 , 623.71 );
  LINE_PATH_TO( bezierPath , 617.89 , 714.55 );
  LINE_PATH_TO( bezierPath , 722.14 , 714.66 );
  LINE_PATH_TO( bezierPath , 552.91 , 235.69 );
  LINE_PATH_TO( bezierPath , 438.33 , 235.69 );
  LINE_PATH_TO( bezierPath , 268.36 , 714.66 );
  MOVE_PATH_TO( bezierPath , 436.99 , 544.8);
  LINE_PATH_TO( bezierPath , 486.55 , 392.11 );
  CURVE_PATH(bezierPath , 498.65 , 332.05 , 493.2 , 371.7 , 498.65 , 346.96);
  LINE_PATH_TO( bezierPath , 500.21 , 331.9 );
  CURVE_PATH(bezierPath , 512.35 , 392.34 , 500.14 , 348.14 , 506.06 , 373.07);
  LINE_PATH_TO( bezierPath , 561.49 , 544.65 );
  LINE_PATH_TO( bezierPath , 436.98 , 544.8 );
  LINE_PATH_TO( bezierPath , 436.99 , 544.8 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color17 setFill];
  [bezierPath fill];
  
  

}


-(void)drawRERBRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color19 = [UIColor colorWithRed: 0.221 green: 0.481 blue: 0.755 alpha: 1];
  UIColor* color20 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Oval Drawing
  CGRect ovalRect        = CGRectMake(34 * ratioW, 34 * ratioH, 930 * ratioW, 930 * ratioH);
  UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:ovalRect];
  
  [color20 setFill];
  [ovalPath fill];
  [color19 setStroke];
  ovalPath.lineWidth = 70 * ratioH;
  [ovalPath stroke];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 705.08 , 588.4);
  CURVE_PATH(bezierPath , 613.05 , 474.49 , 705.08 , 520.69 , 663.93 , 481.44);
  LINE_PATH_TO( bezierPath , 613.05 , 473.22 );
  CURVE_PATH(bezierPath , 689.37 , 379.66 , 650.46 , 466.38 , 689.37 , 429.07);
  CURVE_PATH(bezierPath , 516.49 , 258.37 , 689.37 , 275.99 , 594.33 , 258.37);
  LINE_PATH_TO( bezierPath , 337.63 , 258.37 );
  LINE_PATH_TO( bezierPath , 337.63 , 736.76 );
  LINE_PATH_TO( bezierPath , 508.94 , 736.76 );
  CURVE_PATH(bezierPath , 705.08 , 588.39 , 599.6 , 736.75 , 705.08 , 708.94);
  MOVE_PATH_TO( bezierPath , 589.06 , 393.87);
  CURVE_PATH(bezierPath , 497.03 , 448.1 , 589.06 , 448.84 , 532.91 , 448.1);
  LINE_PATH_TO( bezierPath , 443.88 , 448.1 );
  LINE_PATH_TO( bezierPath , 443.88 , 338.36 );
  LINE_PATH_TO( bezierPath , 495.49 , 338.36 );
  CURVE_PATH(bezierPath , 589.06 , 393.87 , 529.93 , 338.36 , 589.06 , 336.97);
  LINE_PATH_TO( bezierPath , 589.06 , 393.87 );
  [bezierPath closePath];
  MOVE_PATH_TO( bezierPath , 598.79 , 585.61);
  CURVE_PATH(bezierPath , 506.03 , 657.5 , 598.79 , 647.99 , 555.38 , 657.5);
  LINE_PATH_TO( bezierPath , 443.9 , 657.5 );
  LINE_PATH_TO( bezierPath , 443.9 , 524 );
  LINE_PATH_TO( bezierPath , 500.04 , 524 );
  CURVE_PATH(bezierPath , 598.79 , 585.62 , 535.22 , 524 , 598.79 , 526.09);
  LINE_PATH_TO( bezierPath , 598.79 , 585.61 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color19 setFill];
  [bezierPath fill];
  
  

}

-(void)drawRERCRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color21 = [UIColor colorWithRed: 0.943 green: 0.804 blue: 0.08 alpha: 1];
  UIColor* color22 = [UIColor colorWithRed: 0.948 green: 0.795 blue: 0.067 alpha: 1];
  UIColor* color23 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Oval Drawing
  CGRect ovalRect        = CGRectMake(34 * ratioW, 34 * ratioH, 930 * ratioW, 930 * ratioH);
  UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:ovalRect];
  
  [color23 setFill];
  [ovalPath fill];
  [color21 setStroke];
  ovalPath.lineWidth = 70 * ratioH;
  [ovalPath stroke];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 659.11 , 718.87);
  LINE_PATH_TO( bezierPath , 632.1 , 636.36 );
  CURVE_PATH(bezierPath , 535.27 , 662.27 , 607.74 , 650.69 , 573.19 , 662.27);
  CURVE_PATH(bezierPath , 393.25 , 503.49 , 459.43 , 662.27 , 393.34 , 603.65);
  CURVE_PATH(bezierPath , 527.48 , 339.81 , 393.17 , 427.22 , 427.4 , 339.77);
  CURVE_PATH(bezierPath , 624.42 , 365.92 , 558.25 , 339.81 , 592.85 , 348.76);
  LINE_PATH_TO( bezierPath , 659.1 , 277.91 );
  CURVE_PATH(bezierPath , 521.45 , 249.93 , 624.31 , 262.12 , 580.85 , 250.05);
  CURVE_PATH(bezierPath , 282.73 , 506.25 , 359.97 , 249.93 , 282.73 , 371.99);
  CURVE_PATH(bezierPath , 521.45 , 752.36 , 282.85 , 647.91 , 375.07 , 752.32);
  CURVE_PATH(bezierPath , 659.11 , 718.88 , 568.5 , 752.28 , 624.28 , 736.53);
  bezierPath.miterLimit = 4;
  
  [color22 setFill];
  [bezierPath fill];
  
  

}


-(void)drawRERDRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color24 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  UIColor* color25 = [UIColor colorWithRed: 0.19 green: 0.601 blue: 0.196 alpha: 1];
  
  //// Oval Drawing
  CGRect ovalRect        = CGRectMake(34 * ratioW, 34 * ratioH, 930 * ratioW, 930 * ratioH);
  UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:ovalRect];
  
  [color24 setFill];
  [ovalPath fill];
  [color25 setStroke];
  ovalPath.lineWidth = 70 * ratioH;
  [ovalPath stroke];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 750.92 , 486.63);
  CURVE_PATH(bezierPath , 461 , 258.41 , 750.92 , 261.86 , 552.37 , 258.41);
  LINE_PATH_TO( bezierPath , 321.48 , 258.41 );
  LINE_PATH_TO( bezierPath , 321.48 , 736.76 );
  LINE_PATH_TO( bezierPath , 456.4 , 736.76 );
  CURVE_PATH(bezierPath , 750.92 , 486.63 , 602.66 , 736.76 , 750.92 , 696.04);
  [bezierPath closePath];
  MOVE_PATH_TO( bezierPath , 642.05 , 493.49);
  CURVE_PATH(bezierPath , 479.47 , 654.01 , 642.05 , 618.77 , 571.52 , 654.01);
  LINE_PATH_TO( bezierPath , 427.75 , 654.01 );
  LINE_PATH_TO( bezierPath , 427.75 , 341.62 );
  LINE_PATH_TO( bezierPath , 475.94 , 341.62 );
  CURVE_PATH(bezierPath , 642.05 , 493.49 , 541.18 , 341.62 , 642.05 , 359.36);
  LINE_PATH_TO( bezierPath , 642.05 , 493.49 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color25 setFill];
  [bezierPath fill];
  
  

}

-(void)drawRERERect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color26 = [UIColor colorWithRed: 0.79 green: 0.417 blue: 0.634 alpha: 1];
  UIColor* color27 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Oval Drawing
  CGRect ovalRect        = CGRectMake(34 * ratioW, 34 * ratioH, 930 * ratioW, 930 * ratioH);
  UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:ovalRect];
  
  [color27 setFill];
  [ovalPath fill];
  [color26 setStroke];
  ovalPath.lineWidth = 70 * ratioH;
  [ovalPath stroke];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 359.56 , 734.27);
  LINE_PATH_TO( bezierPath , 359.56 , 259.15 );
  LINE_PATH_TO( bezierPath , 653.92 , 259.04 );
  LINE_PATH_TO( bezierPath , 653.92 , 344.59 );
  LINE_PATH_TO( bezierPath , 465.17 , 344.59 );
  LINE_PATH_TO( bezierPath , 465.17 , 442.11 );
  LINE_PATH_TO( bezierPath , 647.22 , 442.11 );
  LINE_PATH_TO( bezierPath , 647.22 , 524.17 );
  LINE_PATH_TO( bezierPath , 465.17 , 524.29 );
  LINE_PATH_TO( bezierPath , 465.17 , 648.88 );
  LINE_PATH_TO( bezierPath , 663.63 , 648.68 );
  LINE_PATH_TO( bezierPath , 663.63 , 734.27 );
  LINE_PATH_TO( bezierPath , 359.56 , 734.27 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color26 setFill];
  [bezierPath fill];
  
  

}


@end
