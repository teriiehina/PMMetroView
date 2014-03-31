//
//  PMMetroView+RER.m
//  TestMetroView
//
//  Created by Peter MEUEL on 31/03/2014.
//  Copyright (c) 2014 Peter MEUEL. All rights reserved.
//

#import "PMMetroView+RER.h"

@implementation PMMetroView (RER)

- (void)drawRERRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);
  
  //// Color Declarations
  UIColor* color29 = [UIColor colorWithRed: 0 green: 0 blue: 0.529 alpha: 1];
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 500 , 35);
  CURVE_PATH(bezierPath , 965 , 500 , 756.81 , 35 , 965 , 243.19);
  CURVE_PATH(bezierPath , 500 , 965 , 965 , 756.81 , 756.81 , 965);
  CURVE_PATH(bezierPath , 35 , 500 , 243.19 , 965 , 35 , 756.81);
  CURVE_PATH(bezierPath , 500 , 35 , 35 , 243.19 , 243.19 , 35);
  [bezierPath closePath];
  [color29 setStroke];
  bezierPath.lineWidth = 70 * ratioH;
  [bezierPath stroke];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezier2Path , 605.01 , 640.01);
  CURVE_PATH(bezier2Path , 577.53 , 608.76 , 605.01 , 624.97 , 595 , 608.76);
  LINE_PATH_TO( bezier2Path , 482.51 , 608.76 );
  LINE_PATH_TO( bezier2Path , 482.51 , 522.52 );
  LINE_PATH_TO( bezier2Path , 561.29 , 522.52 );
  CURVE_PATH(bezier2Path , 588.73 , 493.77 , 578.76 , 522.52 , 588.73 , 507.51);
  CURVE_PATH(bezier2Path , 561.29 , 464.98 , 588.73 , 478.79 , 578.76 , 464.98);
  LINE_PATH_TO( bezier2Path , 482.51 , 464.98 );
  LINE_PATH_TO( bezier2Path , 482.51 , 386.21 );
  LINE_PATH_TO( bezier2Path , 570.1 , 386.21 );
  CURVE_PATH(bezier2Path , 597.54 , 355 , 587.54 , 386.21 , 597.54 , 368.77);
  CURVE_PATH(bezier2Path , 570.1 , 323.75 , 597.54 , 340.02 , 587.53 , 323.75);
  LINE_PATH_TO( bezier2Path , 442.54 , 323.75 );
  CURVE_PATH(bezier2Path , 415.04 , 352.53 , 425.03 , 323.75 , 415.04 , 337.56);
  LINE_PATH_TO( bezier2Path , 415.04 , 645.02 );
  CURVE_PATH(bezier2Path , 448.81 , 671.26 , 415.04 , 662.53 , 432.55 , 671.26);
  LINE_PATH_TO( bezier2Path , 577.56 , 671.26 );
  CURVE_PATH(bezier2Path , 605.01 , 640 , 595 , 671.25 , 605.01 , 653.76);
  LINE_PATH_TO( bezier2Path , 605.01 , 640.01 );
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color29 setFill];
  [bezier2Path fill];
  
  
  //// Bezier 3 Drawing
  UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezier3Path , 798.78 , 518.78);
  CURVE_PATH(bezier3Path , 858.78 , 422.49 , 831.22 , 502.5 , 858.78 , 473.75);
  CURVE_PATH(bezier3Path , 759.99 , 323.74 , 858.78 , 354.99 , 808.79 , 323.74);
  LINE_PATH_TO( bezier3Path , 666.27 , 323.74 );
  CURVE_PATH(bezier3Path , 638.71 , 352.52 , 648.79 , 323.74 , 638.71 , 337.55);
  LINE_PATH_TO( bezier3Path , 638.71 , 646.2 );
  CURVE_PATH(bezier3Path , 672.5 , 672.52 , 638.71 , 663.79 , 656.26 , 672.52);
  CURVE_PATH(bezier3Path , 706.25 , 646.2 , 691.21 , 672.52 , 706.25 , 663.79);
  LINE_PATH_TO( bezier3Path , 706.25 , 532.48 );
  LINE_PATH_TO( bezier3Path , 734.97 , 532.48 );
  LINE_PATH_TO( bezier3Path , 791.31 , 658.79 );
  CURVE_PATH(bezier3Path , 815.02 , 672.53 , 796.24 , 668.76 , 805.01 , 672.53);
  CURVE_PATH(bezier3Path , 852.58 , 631.24 , 835.03 , 672.53 , 863.78 , 653.79);
  LINE_PATH_TO( bezier3Path , 798.77 , 518.78 );
  LINE_PATH_TO( bezier3Path , 798.78 , 518.78 );
  [bezier3Path closePath];
  MOVE_PATH_TO( bezier3Path , 726.31 , 482.49);
  LINE_PATH_TO( bezier3Path , 706.26 , 482.49 );
  LINE_PATH_TO( bezier3Path , 706.26 , 381.23 );
  LINE_PATH_TO( bezier3Path , 730.04 , 381.23 );
  CURVE_PATH(bezier3Path , 788.81 , 429.99 , 761.29 , 381.23 , 788.81 , 395.01);
  CURVE_PATH(bezier3Path , 726.31 , 482.49 , 788.82 , 472.52 , 750.06 , 482.49);
  LINE_PATH_TO( bezier3Path , 726.31 , 482.49 );
  [bezier3Path closePath];
  bezier3Path.miterLimit = 4;
  
  [color29 setFill];
  [bezier3Path fill];
  
  
  //// Bezier 4 Drawing
  UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezier4Path , 315.05 , 518.78);
  CURVE_PATH(bezier4Path , 375 , 422.49 , 347.57 , 502.5 , 375 , 473.75);
  CURVE_PATH(bezier4Path , 276.28 , 323.74 , 375 , 354.99 , 325 , 323.74);
  LINE_PATH_TO( bezier4Path , 182.55 , 323.74 );
  CURVE_PATH(bezier4Path , 155.07 , 352.52 , 165.04 , 323.74 , 155.07 , 337.55);
  LINE_PATH_TO( bezier4Path , 155.07 , 646.2 );
  CURVE_PATH(bezier4Path , 188.78 , 672.52 , 155.07 , 663.79 , 172.54 , 672.52);
  CURVE_PATH(bezier4Path , 222.51 , 646.2 , 207.58 , 672.52 , 222.51 , 663.79);
  LINE_PATH_TO( bezier4Path , 222.51 , 532.48 );
  LINE_PATH_TO( bezier4Path , 251.3 , 532.48 );
  LINE_PATH_TO( bezier4Path , 307.55 , 658.79 );
  CURVE_PATH(bezier4Path , 331.27 , 672.53 , 312.55 , 668.76 , 321.31 , 672.53);
  CURVE_PATH(bezier4Path , 368.76 , 631.24 , 351.27 , 672.53 , 380.04 , 653.79);
  LINE_PATH_TO( bezier4Path , 315.05 , 518.78 );
  LINE_PATH_TO( bezier4Path , 315.05 , 518.78 );
  [bezier4Path closePath];
  MOVE_PATH_TO( bezier4Path , 242.55 , 482.49);
  LINE_PATH_TO( bezier4Path , 222.52 , 482.49 );
  LINE_PATH_TO( bezier4Path , 222.52 , 381.23 );
  LINE_PATH_TO( bezier4Path , 246.28 , 381.23 );
  CURVE_PATH(bezier4Path , 305.07 , 429.99 , 277.55 , 381.23 , 305.07 , 395.01);
  CURVE_PATH(bezier4Path , 242.54 , 482.49 , 305.06 , 472.52 , 266.26 , 482.49);
  LINE_PATH_TO( bezier4Path , 242.55 , 482.49 );
  [bezier4Path closePath];
  bezier4Path.miterLimit = 4;
  
  [color29 setFill];
  [bezier4Path fill];
}


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
