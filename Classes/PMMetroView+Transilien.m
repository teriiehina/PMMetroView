//
//  PMMetroView+Transilien.m
//  TestMetroView
//
//  Created by Peter MEUEL on 31/03/2014.
//  Copyright (c) 2014 Peter MEUEL. All rights reserved.
//

#import "PMMetroView+Transilien.h"


@implementation PMMetroView (Transilien)


- (void)drawTransRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color32 = [UIColor colorWithRed: 0 green: 0 blue: 0.529 alpha: 1];
  UIColor* color33 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 170.51 , 35);
  LINE_PATH_TO( bezierPath , 829.49 , 35 );
  CURVE_PATH(bezierPath , 965 , 170.51 , 904.34 , 35 , 965 , 95.67);
  LINE_PATH_TO( bezierPath , 965 , 829.49 );
  CURVE_PATH(bezierPath , 829.49 , 965 , 965 , 904.33 , 904.33 , 965);
  LINE_PATH_TO( bezierPath , 170.51 , 965 );
  CURVE_PATH(bezierPath , 35 , 829.49 , 95.67 , 965 , 35 , 904.33);
  LINE_PATH_TO( bezierPath , 35 , 170.51 );
  CURVE_PATH(bezierPath , 170.43 , 35 , 34.9 , 95.67 , 95.52 , 35);
  LINE_PATH_TO( bezierPath , 170.51 , 35 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color33 setFill];
  [bezierPath fill];
  [color32 setStroke];
  bezierPath.lineWidth = 70 * ratioH;
  [bezierPath stroke];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezier2Path , 685.35 , 744.39);
  CURVE_PATH(bezier2Path , 635.7 , 665.96 , 658.05 , 704.09 , 635.7 , 668.79);
  CURVE_PATH(bezier2Path , 648.32 , 656.65 , 635.7 , 662.7 , 640.31 , 659.3);
  CURVE_PATH(bezier2Path , 695.57 , 615.23 , 664.37 , 651.35 , 686.72 , 631.76);
  CURVE_PATH(bezier2Path , 702.42 , 419.35 , 702.41 , 602.43 , 702.42 , 602.24);
  CURVE_PATH(bezier2Path , 695.57 , 223.47 , 702.42 , 236.46 , 702.41 , 236.27);
  CURVE_PATH(bezier2Path , 648.71 , 182.52 , 686.67 , 206.84 , 664.13 , 187.14);
  CURVE_PATH(bezier2Path , 497.09 , 178.87 , 640.16 , 179.96 , 594.99 , 178.87);
  LINE_PATH_TO( bezier2Path , 357.64 , 178.87 );
  LINE_PATH_TO( bezier2Path , 341.59 , 186.87 );
  CURVE_PATH(bezier2Path , 302.4 , 228.52 , 323.4 , 195.94 , 311.84 , 208.22);
  CURVE_PATH(bezier2Path , 295.91 , 419.35 , 296.06 , 242.17 , 295.91 , 246.41);
  LINE_PATH_TO( bezier2Path , 295.91 , 596.21 );
  LINE_PATH_TO( bezier2Path , 304.64 , 613.98 );
  CURVE_PATH(bezier2Path , 351.41 , 657.71 , 314.64 , 634.34 , 332.92 , 651.44);
  CURVE_PATH(bezier2Path , 363.79 , 666.86 , 359.43 , 660.43 , 364.03 , 663.84);
  CURVE_PATH(bezier2Path , 315.52 , 742.55 , 363.58 , 669.5 , 341.86 , 703.57);
  CURVE_PATH(bezier2Path , 265.3 , 817.3 , 289.18 , 781.53 , 266.58 , 815.16);
  CURVE_PATH(bezier2Path , 290.3 , 821.13 , 263.5 , 820.28 , 269.25 , 821.17);
  LINE_PATH_TO( bezier2Path , 317.63 , 821.1 );
  LINE_PATH_TO( bezier2Path , 353.24 , 768.26 );
  CURVE_PATH(bezier2Path , 395.13 , 713.92 , 375.18 , 735.72 , 391.26 , 714.86);
  CURVE_PATH(bezier2Path , 505.31 , 713.26 , 398.59 , 713.08 , 448.17 , 712.78);
  LINE_PATH_TO( bezier2Path , 609.2 , 714.12 );
  LINE_PATH_TO( bezier2Path , 645.26 , 766.88 );
  LINE_PATH_TO( bezier2Path , 681.32 , 819.62 );
  LINE_PATH_TO( bezier2Path , 708.15 , 820.52 );
  CURVE_PATH(bezier2Path , 734.99 , 819.54 , 722.91 , 821.01 , 734.99 , 820.57);
  CURVE_PATH(bezier2Path , 685.34 , 744.38 , 735 , 818.5 , 712.66 , 784.67);
  LINE_PATH_TO( bezier2Path , 685.33 , 744.39 );
  LINE_PATH_TO( bezier2Path , 685.35 , 744.39 );
  [bezier2Path closePath];
  MOVE_PATH_TO( bezier2Path , 416.9 , 528.98);
  CURVE_PATH(bezier2Path , 399.65 , 543.58 , 412.25 , 534.5 , 404.49 , 541.08);
  CURVE_PATH(bezier2Path , 347.66 , 482.96 , 364.26 , 561.88 , 325.21 , 516.36);
  CURVE_PATH(bezier2Path , 411.46 , 474.88 , 363.64 , 459.18 , 390.61 , 455.76);
  CURVE_PATH(bezier2Path , 423.95 , 501.98 , 421.01 , 483.63 , 422.74 , 487.38);
  CURVE_PATH(bezier2Path , 416.89 , 528.98 , 425.19 , 516.99 , 424.39 , 520.07);
  LINE_PATH_TO( bezier2Path , 416.9 , 528.98 );
  [bezier2Path closePath];
  MOVE_PATH_TO( bezier2Path , 499.12 , 402.28);
  CURVE_PATH(bezier2Path , 347.75 , 377.23 , 359.18 , 402.28 , 360.91 , 402.57);
  CURVE_PATH(bezier2Path , 341.54 , 321.05 , 341.16 , 364.54 , 340.69 , 360.28);
  CURVE_PATH(bezier2Path , 363.83 , 255.08 , 342.55 , 274.92 , 344.33 , 269.65);
  CURVE_PATH(bezier2Path , 495.51 , 247.81 , 372.09 , 248.91 , 376.71 , 248.65);
  CURVE_PATH(bezier2Path , 632.36 , 254.02 , 618.44 , 246.94 , 618.65 , 246.95);
  CURVE_PATH(bezier2Path , 657.41 , 326.53 , 654.22 , 265.28 , 657.41 , 274.54);
  CURVE_PATH(bezier2Path , 650.37 , 380.88 , 657.41 , 366.91 , 656.87 , 371.16);
  CURVE_PATH(bezier2Path , 632.53 , 396.85 , 646.5 , 386.68 , 638.47 , 393.86);
  CURVE_PATH(bezier2Path , 499.13 , 402.28 , 622.81 , 401.73 , 609.68 , 402.27);
  LINE_PATH_TO( bezier2Path , 499.12 , 402.28 );
  [bezier2Path closePath];
  MOVE_PATH_TO( bezier2Path , 599.76 , 543.7);
  CURVE_PATH(bezier2Path , 589.46 , 472.31 , 571.41 , 531.36 , 565.76 , 492.25);
  CURVE_PATH(bezier2Path , 654.12 , 487.18 , 610.82 , 454.34 , 641.65 , 461.42);
  CURVE_PATH(bezier2Path , 634.83 , 542.93 , 664.62 , 508.87 , 656.36 , 532.71);
  CURVE_PATH(bezier2Path , 599.76 , 543.71 , 621.8 , 549.13 , 612.64 , 549.33);
  LINE_PATH_TO( bezier2Path , 599.76 , 543.7 );
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color32 setFill];
  [bezier2Path fill];
  
  

}


- (void)drawTransHRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color34 = [UIColor colorWithRed: 0.549 green: 0.259 blue: 0.279 alpha: 1];
  UIColor* color35 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 170.51 , 35);
  LINE_PATH_TO( bezierPath , 829.49 , 35 );
  CURVE_PATH(bezierPath , 965 , 170.51 , 904.34 , 35 , 965 , 95.67);
  LINE_PATH_TO( bezierPath , 965 , 829.49 );
  CURVE_PATH(bezierPath , 829.49 , 965 , 965 , 904.33 , 904.33 , 965);
  LINE_PATH_TO( bezierPath , 170.51 , 965 );
  CURVE_PATH(bezierPath , 35 , 829.49 , 95.67 , 965 , 35 , 904.33);
  LINE_PATH_TO( bezierPath , 35 , 170.51 );
  CURVE_PATH(bezierPath , 170.43 , 35 , 34.9 , 95.67 , 95.52 , 35);
  LINE_PATH_TO( bezierPath , 170.51 , 35 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color35 setFill];
  [bezierPath fill];
  [color34 setStroke];
  bezierPath.lineWidth = 70 * ratioH;
  [bezierPath stroke];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezier2Path , 310.52 , 270.3);
  LINE_PATH_TO( bezier2Path , 310.52 , 729.7 );
  LINE_PATH_TO( bezier2Path , 414.8 , 729.7 );
  LINE_PATH_TO( bezier2Path , 414.8 , 537.49 );
  LINE_PATH_TO( bezier2Path , 585.88 , 537.49 );
  LINE_PATH_TO( bezier2Path , 585.88 , 729.71 );
  LINE_PATH_TO( bezier2Path , 689.49 , 729.71 );
  LINE_PATH_TO( bezier2Path , 689.49 , 270.3 );
  LINE_PATH_TO( bezier2Path , 585.88 , 270.3 );
  LINE_PATH_TO( bezier2Path , 585.88 , 446.84 );
  LINE_PATH_TO( bezier2Path , 414.8 , 446.84 );
  LINE_PATH_TO( bezier2Path , 414.8 , 270.3 );
  LINE_PATH_TO( bezier2Path , 310.52 , 270.3 );
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color34 setFill];
  [bezier2Path fill];
  
  

}


- (void)drawTransJRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color36 = [UIColor colorWithRed: 0.735 green: 0.813 blue: 0.129 alpha: 1];
  UIColor* color37 = [UIColor colorWithRed: 0.74 green: 0.828 blue: 0.135 alpha: 1];
  UIColor* color38 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 170.51 , 35);
  LINE_PATH_TO( bezierPath , 829.49 , 35 );
  CURVE_PATH(bezierPath , 965 , 170.51 , 904.34 , 35 , 965 , 95.67);
  LINE_PATH_TO( bezierPath , 965 , 829.49 );
  CURVE_PATH(bezierPath , 829.49 , 965 , 965 , 904.33 , 904.33 , 965);
  LINE_PATH_TO( bezierPath , 170.51 , 965 );
  CURVE_PATH(bezierPath , 35 , 829.49 , 95.67 , 965 , 35 , 904.33);
  LINE_PATH_TO( bezierPath , 35 , 170.51 );
  CURVE_PATH(bezierPath , 170.43 , 35 , 34.9 , 95.67 , 95.52 , 35);
  LINE_PATH_TO( bezierPath , 170.51 , 35 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color38 setFill];
  [bezierPath fill];
  [color37 setStroke];
  bezierPath.lineWidth = 70 * ratioH;
  [bezierPath stroke];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezier2Path , 516.02 , 554.94);
  CURVE_PATH(bezier2Path , 496.93 , 627.44 , 515.79 , 590.05 , 509.43 , 614.22);
  CURVE_PATH(bezier2Path , 445.13 , 646.26 , 484.43 , 640.66 , 467.17 , 646.94);
  CURVE_PATH(bezier2Path , 416.25 , 643.97 , 434.86 , 646.23 , 425.24 , 645.46);
  CURVE_PATH(bezier2Path , 391.97 , 638.09 , 407.25 , 642.49 , 399.16 , 640.51);
  LINE_PATH_TO( bezier2Path , 380.38 , 721.92 );
  CURVE_PATH(bezier2Path , 416.93 , 729.94 , 390.99 , 725.36 , 403.17 , 728.03);
  CURVE_PATH(bezier2Path , 456.03 , 732.83 , 430.69 , 731.84 , 443.73 , 732.81);
  CURVE_PATH(bezier2Path , 575.65 , 693.64 , 506.98 , 733.66 , 546.86 , 720.6);
  CURVE_PATH(bezier2Path , 619.62 , 556.3 , 604.46 , 666.7 , 619.11 , 620.91);
  LINE_PATH_TO( bezier2Path , 619.62 , 265.94 );
  LINE_PATH_TO( bezier2Path , 516.01 , 265.94 );
  LINE_PATH_TO( bezier2Path , 516.01 , 554.95 );
  LINE_PATH_TO( bezier2Path , 516.01 , 554.94 );
  LINE_PATH_TO( bezier2Path , 516.02 , 554.94 );
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color36 setFill];
  [bezier2Path fill];
  
  

}


- (void)drawTransKRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color39 = [UIColor colorWithRed: 0.712 green: 0.589 blue: 0.024 alpha: 1];
  UIColor* color40 = [UIColor colorWithRed: 0.708 green: 0.598 blue: 0.04 alpha: 1];
  UIColor* color41 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 170.51 , 35);
  LINE_PATH_TO( bezierPath , 829.49 , 35 );
  CURVE_PATH(bezierPath , 965 , 170.51 , 904.34 , 35 , 965 , 95.67);
  LINE_PATH_TO( bezierPath , 965 , 829.49 );
  CURVE_PATH(bezierPath , 829.49 , 965 , 965 , 904.33 , 904.33 , 965);
  LINE_PATH_TO( bezierPath , 170.51 , 965 );
  CURVE_PATH(bezierPath , 35 , 829.49 , 95.67 , 965 , 35 , 904.33);
  LINE_PATH_TO( bezierPath , 35 , 170.51 );
  CURVE_PATH(bezierPath , 170.43 , 35 , 34.9 , 95.67 , 95.52 , 35);
  LINE_PATH_TO( bezierPath , 170.51 , 35 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color41 setFill];
  [bezierPath fill];
  [color40 setStroke];
  bezierPath.lineWidth = 70 * ratioH;
  [bezierPath stroke];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezier2Path , 311.88 , 729.7);
  LINE_PATH_TO( bezier2Path , 414.8 , 729.7 );
  LINE_PATH_TO( bezier2Path , 414.8 , 579.75 );
  LINE_PATH_TO( bezier2Path , 454.33 , 531.35 );
  LINE_PATH_TO( bezier2Path , 566.8 , 729.69 );
  LINE_PATH_TO( bezier2Path , 688.12 , 729.69 );
  LINE_PATH_TO( bezier2Path , 527.95 , 465.91 );
  LINE_PATH_TO( bezier2Path , 679.95 , 270.29 );
  LINE_PATH_TO( bezier2Path , 552.49 , 270.29 );
  LINE_PATH_TO( bezier2Path , 448.2 , 422.98 );
  CURVE_PATH(bezier2Path , 432.52 , 447.69 , 443.05 , 431.13 , 437.83 , 439.37);
  CURVE_PATH(bezier2Path , 416.83 , 473.42 , 427.2 , 456.02 , 421.98 , 464.59);
  LINE_PATH_TO( bezier2Path , 414.79 , 473.42 );
  LINE_PATH_TO( bezier2Path , 414.79 , 270.3 );
  LINE_PATH_TO( bezier2Path , 311.87 , 270.3 );
  LINE_PATH_TO( bezier2Path , 311.87 , 729.7 );
  LINE_PATH_TO( bezier2Path , 311.88 , 729.7 );
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color39 setFill];
  [bezier2Path fill];
  
  

}


- (void)drawTransLRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color42 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  UIColor* color43 = [UIColor colorWithRed: 0.399 green: 0.412 blue: 0.682 alpha: 1];
  UIColor* color44 = [UIColor colorWithRed: 0.398 green: 0.399 blue: 0.682 alpha: 1];
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 170.51 , 35);
  LINE_PATH_TO( bezierPath , 829.49 , 35 );
  CURVE_PATH(bezierPath , 965 , 170.51 , 904.34 , 35 , 965 , 95.67);
  LINE_PATH_TO( bezierPath , 965 , 829.49 );
  CURVE_PATH(bezierPath , 829.49 , 965 , 965 , 904.33 , 904.33 , 965);
  LINE_PATH_TO( bezierPath , 170.51 , 965 );
  CURVE_PATH(bezierPath , 35 , 829.49 , 95.67 , 965 , 35 , 904.33);
  LINE_PATH_TO( bezierPath , 35 , 170.51 );
  CURVE_PATH(bezierPath , 170.43 , 35 , 34.9 , 95.67 , 95.52 , 35);
  LINE_PATH_TO( bezierPath , 170.51 , 35 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color42 setFill];
  [bezierPath fill];
  [color44 setStroke];
  bezierPath.lineWidth = 70 * ratioH;
  [bezierPath stroke];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezier2Path , 356.52 , 729.7);
  LINE_PATH_TO( bezier2Path , 643.47 , 729.7 );
  LINE_PATH_TO( bezier2Path , 643.47 , 642.46 );
  LINE_PATH_TO( bezier2Path , 460.81 , 642.46 );
  LINE_PATH_TO( bezier2Path , 460.81 , 270.3 );
  LINE_PATH_TO( bezier2Path , 356.52 , 270.3 );
  LINE_PATH_TO( bezier2Path , 356.52 , 729.7 );
  LINE_PATH_TO( bezier2Path , 356.52 , 729.7 );
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color43 setFill];
  [bezier2Path fill];
  
  

}


- (void)drawTransNRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color45 = [UIColor colorWithRed: 0.223 green: 0.673 blue: 0.611 alpha: 1];
  UIColor* color46 = [UIColor colorWithRed: 0.202 green: 0.664 blue: 0.611 alpha: 1];
  UIColor* color47 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 170.51 , 35);
  LINE_PATH_TO( bezierPath , 829.49 , 35 );
  CURVE_PATH(bezierPath , 965 , 170.51 , 904.34 , 35 , 965 , 95.67);
  LINE_PATH_TO( bezierPath , 965 , 829.49 );
  CURVE_PATH(bezierPath , 829.49 , 965 , 965 , 904.33 , 904.33 , 965);
  LINE_PATH_TO( bezierPath , 170.51 , 965 );
  CURVE_PATH(bezierPath , 35 , 829.49 , 95.67 , 965 , 35 , 904.33);
  LINE_PATH_TO( bezierPath , 35 , 170.51 );
  CURVE_PATH(bezierPath , 170.43 , 35 , 34.9 , 95.67 , 95.52 , 35);
  LINE_PATH_TO( bezierPath , 170.51 , 35 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color47 setFill];
  [bezierPath fill];
  [color45 setStroke];
  bezierPath.lineWidth = 70 * ratioH;
  [bezierPath stroke];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezier2Path , 405.26 , 729.7);
  LINE_PATH_TO( bezier2Path , 405.26 , 591.33 );
  CURVE_PATH(bezier2Path , 404.24 , 485.77 , 405.26 , 553.98 , 404.91 , 518.79);
  CURVE_PATH(bezier2Path , 401.17 , 390.94 , 403.55 , 452.75 , 402.53 , 421.14);
  LINE_PATH_TO( bezier2Path , 403.21 , 390.26 );
  CURVE_PATH(bezier2Path , 441.3 , 473.16 , 414.68 , 417.51 , 427.37 , 445.14);
  CURVE_PATH(bezier2Path , 482.96 , 552.48 , 455.23 , 501.18 , 469.12 , 527.62);
  LINE_PATH_TO( bezier2Path , 581.11 , 729.69 );
  LINE_PATH_TO( bezier2Path , 690.17 , 729.69 );
  LINE_PATH_TO( bezier2Path , 690.17 , 270.29 );
  LINE_PATH_TO( bezier2Path , 594.75 , 270.29 );
  LINE_PATH_TO( bezier2Path , 594.75 , 403.88 );
  CURVE_PATH(bezier2Path , 596.62 , 503.31 , 594.68 , 438.52 , 595.31 , 471.66);
  CURVE_PATH(bezier2Path , 603.61 , 596.09 , 597.93 , 534.97 , 600.26 , 565.9);
  LINE_PATH_TO( bezier2Path , 601.56 , 596.09 );
  CURVE_PATH(bezier2Path , 566.63 , 516.09 , 591.2 , 569.89 , 579.55 , 543.23);
  CURVE_PATH(bezier2Path , 526.58 , 438.64 , 553.71 , 488.96 , 540.36 , 463.14);
  LINE_PATH_TO( bezier2Path , 431.17 , 270.29 );
  LINE_PATH_TO( bezier2Path , 309.84 , 270.29 );
  LINE_PATH_TO( bezier2Path , 309.84 , 729.69 );
  LINE_PATH_TO( bezier2Path , 405.27 , 729.69 );
  LINE_PATH_TO( bezier2Path , 405.26 , 729.7 );
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color46 setFill];
  [bezier2Path fill];
  
  

}


- (void)drawTransPRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color48 = [UIColor colorWithRed: 0.954 green: 0.633 blue: 0.083 alpha: 1];
  UIColor* color49 = [UIColor colorWithRed: 0.949 green: 0.637 blue: 0.09 alpha: 1];
  UIColor* color50 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 170.51 , 35);
  LINE_PATH_TO( bezierPath , 829.49 , 35 );
  CURVE_PATH(bezierPath , 965 , 170.51 , 904.34 , 35 , 965 , 95.67);
  LINE_PATH_TO( bezierPath , 965 , 829.49 );
  CURVE_PATH(bezierPath , 829.49 , 965 , 965 , 904.33 , 904.33 , 965);
  LINE_PATH_TO( bezierPath , 170.51 , 965 );
  CURVE_PATH(bezierPath , 35 , 829.49 , 95.67 , 965 , 35 , 904.33);
  LINE_PATH_TO( bezierPath , 35 , 170.51 );
  CURVE_PATH(bezierPath , 170.43 , 35 , 34.9 , 95.67 , 95.52 , 35);
  LINE_PATH_TO( bezierPath , 170.51 , 35 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color50 setFill];
  [bezierPath fill];
  [color49 setStroke];
  bezierPath.lineWidth = 70 * ratioH;
  [bezierPath stroke];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezier2Path , 335.05 , 731.4);
  LINE_PATH_TO( bezier2Path , 437.98 , 731.4 );
  LINE_PATH_TO( bezier2Path , 437.98 , 567.13 );
  CURVE_PATH(bezier2Path , 454.17 , 568.67 , 442.78 , 567.82 , 448.17 , 568.33);
  CURVE_PATH(bezier2Path , 473.42 , 569.18 , 460.16 , 569.01 , 466.58 , 569.18);
  CURVE_PATH(bezier2Path , 557.76 , 557.51 , 504.26 , 569.25 , 532.38 , 565.36);
  CURVE_PATH(bezier2Path , 622.7 , 520.78 , 583.16 , 549.66 , 604.8 , 537.42);
  CURVE_PATH(bezier2Path , 654.04 , 473.42 , 636.38 , 507.72 , 646.84 , 491.93);
  CURVE_PATH(bezier2Path , 664.96 , 411.73 , 661.27 , 454.9 , 664.9 , 434.34);
  CURVE_PATH(bezier2Path , 651.41 , 350.38 , 664.75 , 389.07 , 660.22 , 368.62);
  CURVE_PATH(bezier2Path , 615.88 , 305.4 , 642.59 , 332.15 , 630.75 , 317.15);
  CURVE_PATH(bezier2Path , 558.19 , 277.79 , 600.62 , 293.13 , 581.39 , 283.93);
  CURVE_PATH(bezier2Path , 475.47 , 268.6 , 535.01 , 271.66 , 507.43 , 268.6);
  CURVE_PATH(bezier2Path , 393.5 , 271.32 , 443.89 , 268.65 , 416.57 , 269.56);
  CURVE_PATH(bezier2Path , 335.06 , 278.14 , 370.45 , 273.08 , 350.96 , 275.35);
  LINE_PATH_TO( bezier2Path , 335.06 , 731.4 );
  LINE_PATH_TO( bezier2Path , 335.05 , 731.4 );
  [bezier2Path closePath];
  MOVE_PATH_TO( bezier2Path , 437.98 , 351.07);
  CURVE_PATH(bezier2Path , 454.34 , 348.26 , 441.72 , 350 , 447.18 , 349.07);
  CURVE_PATH(bezier2Path , 480.92 , 346.98 , 461.49 , 347.45 , 470.35 , 347.02);
  CURVE_PATH(bezier2Path , 540.9 , 364.87 , 506.96 , 347.15 , 526.95 , 353.12);
  CURVE_PATH(bezier2Path , 562.02 , 414.46 , 554.84 , 376.63 , 561.88 , 393.16);
  CURVE_PATH(bezier2Path , 538.09 , 469.59 , 561.75 , 438.16 , 553.78 , 456.54);
  CURVE_PATH(bezier2Path , 472.74 , 489.44 , 522.39 , 482.63 , 500.61 , 489.25);
  CURVE_PATH(bezier2Path , 453.05 , 488.84 , 465.28 , 489.45 , 458.72 , 489.25);
  CURVE_PATH(bezier2Path , 437.98 , 486.71 , 447.39 , 488.43 , 442.36 , 487.72);
  LINE_PATH_TO( bezier2Path , 437.98 , 351.07 );
  LINE_PATH_TO( bezier2Path , 437.98 , 351.07 );
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color48 setFill];
  [bezier2Path fill];
  
  

}


- (void)drawTransRRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color51 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  UIColor* color52 = [UIColor colorWithRed: 0.897 green: 0.678 blue: 0.807 alpha: 1];
  UIColor* color53 = [UIColor colorWithRed: 0.892 green: 0.668 blue: 0.807 alpha: 1];
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 170.51 , 35);
  LINE_PATH_TO( bezierPath , 829.49 , 35 );
  CURVE_PATH(bezierPath , 965 , 170.51 , 904.34 , 35 , 965 , 95.67);
  LINE_PATH_TO( bezierPath , 965 , 829.49 );
  CURVE_PATH(bezierPath , 829.49 , 965 , 965 , 904.33 , 904.33 , 965);
  LINE_PATH_TO( bezierPath , 170.51 , 965 );
  CURVE_PATH(bezierPath , 35 , 829.49 , 95.67 , 965 , 35 , 904.33);
  LINE_PATH_TO( bezierPath , 35 , 170.51 );
  CURVE_PATH(bezierPath , 170.43 , 35 , 34.9 , 95.67 , 95.52 , 35);
  LINE_PATH_TO( bezierPath , 170.51 , 35 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color51 setFill];
  [bezierPath fill];
  [color53 setStroke];
  bezierPath.lineWidth = 70 * ratioH;
  [bezierPath stroke];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezier2Path , 335.05 , 731.4);
  LINE_PATH_TO( bezier2Path , 437.98 , 731.4 );
  LINE_PATH_TO( bezier2Path , 437.98 , 550.78 );
  LINE_PATH_TO( bezier2Path , 469.33 , 550.78 );
  CURVE_PATH(bezier2Path , 517.73 , 566.36 , 490.15 , 550.57 , 506.28 , 555.76);
  CURVE_PATH(bezier2Path , 543.62 , 624.39 , 529.17 , 576.98 , 537.8 , 596.31);
  CURVE_PATH(bezier2Path , 561.94 , 693.99 , 550.45 , 652.74 , 556.56 , 675.95);
  CURVE_PATH(bezier2Path , 575.66 , 731.4 , 567.33 , 712.04 , 571.89 , 724.51);
  LINE_PATH_TO( bezier2Path , 682 , 731.4 );
  CURVE_PATH(bezier2Path , 665.29 , 679.43 , 677.45 , 721.48 , 671.88 , 704.16);
  CURVE_PATH(bezier2Path , 644.51 , 601.9 , 658.71 , 654.69 , 651.77 , 628.84);
  CURVE_PATH(bezier2Path , 621.5 , 547.96 , 638.88 , 580.63 , 631.21 , 562.66);
  CURVE_PATH(bezier2Path , 583.16 , 516.01 , 611.79 , 533.26 , 599 , 522.61);
  LINE_PATH_TO( bezier2Path , 583.16 , 513.96 );
  CURVE_PATH(bezier2Path , 638.54 , 474 , 603.83 , 506.65 , 622.29 , 493.33);
  CURVE_PATH(bezier2Path , 664.27 , 400.82 , 654.79 , 454.67 , 663.36 , 430.29);
  CURVE_PATH(bezier2Path , 653.37 , 345.09 , 664.21 , 379.69 , 660.57 , 361.11);
  CURVE_PATH(bezier2Path , 622.01 , 304.71 , 646.15 , 329.07 , 635.71 , 315.62);
  CURVE_PATH(bezier2Path , 561.01 , 276.93 , 605.76 , 291.87 , 585.44 , 282.61);
  CURVE_PATH(bezier2Path , 473.42 , 268.59 , 536.59 , 271.25 , 507.39 , 268.47);
  CURVE_PATH(bezier2Path , 396.06 , 271.31 , 445.59 , 268.64 , 419.81 , 269.55);
  CURVE_PATH(bezier2Path , 335.06 , 278.13 , 372.32 , 273.07 , 351.99 , 275.34);
  LINE_PATH_TO( bezier2Path , 335.06 , 731.39 );
  LINE_PATH_TO( bezier2Path , 335.05 , 731.4 );
  [bezier2Path closePath];
  MOVE_PATH_TO( bezier2Path , 437.98 , 349.02);
  CURVE_PATH(bezier2Path , 454.84 , 346.81 , 441.64 , 348.28 , 447.26 , 347.54);
  CURVE_PATH(bezier2Path , 485.01 , 345.61 , 462.43 , 346.07 , 472.48 , 345.67);
  CURVE_PATH(bezier2Path , 541.07 , 362.06 , 509.06 , 345.94 , 527.75 , 351.42);
  CURVE_PATH(bezier2Path , 561.35 , 409.68 , 554.39 , 372.69 , 561.15 , 388.57);
  CURVE_PATH(bezier2Path , 539.53 , 457.82 , 561.15 , 430.03 , 553.87 , 446.08);
  CURVE_PATH(bezier2Path , 478.87 , 475.8 , 525.19 , 469.57 , 504.97 , 475.55);
  LINE_PATH_TO( bezier2Path , 437.98 , 475.8 );
  LINE_PATH_TO( bezier2Path , 437.98 , 349.01 );
  LINE_PATH_TO( bezier2Path , 437.98 , 349.02 );
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color52 setFill];
  [bezier2Path fill];
  
  

}


- (void)drawTransURect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color54 = [UIColor colorWithRed: 0.899 green: 0 blue: 0.392 alpha: 1];
  UIColor* color55 = [UIColor colorWithRed: 0.884 green: 0 blue: 0.392 alpha: 1];
  UIColor* color56 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 170.51 , 35);
  LINE_PATH_TO( bezierPath , 829.49 , 35 );
  CURVE_PATH(bezierPath , 965 , 170.51 , 904.34 , 35 , 965 , 95.67);
  LINE_PATH_TO( bezierPath , 965 , 829.49 );
  CURVE_PATH(bezierPath , 829.49 , 965 , 965 , 904.33 , 904.33 , 965);
  LINE_PATH_TO( bezierPath , 170.51 , 965 );
  CURVE_PATH(bezierPath , 35 , 829.49 , 95.67 , 965 , 35 , 904.33);
  LINE_PATH_TO( bezierPath , 35 , 170.51 );
  CURVE_PATH(bezierPath , 170.43 , 35 , 34.9 , 95.67 , 95.52 , 35);
  LINE_PATH_TO( bezierPath , 170.51 , 35 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color56 setFill];
  [bezierPath fill];
  [color55 setStroke];
  bezierPath.lineWidth = 70 * ratioH;
  [bezierPath stroke];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezier2Path , 312.22 , 266.26);
  LINE_PATH_TO( bezier2Path , 312.22 , 522.54 );
  CURVE_PATH(bezier2Path , 360.79 , 682.81 , 312.65 , 595.43 , 328.83 , 648.85);
  CURVE_PATH(bezier2Path , 496.25 , 733.16 , 392.74 , 716.77 , 437.89 , 733.54);
  CURVE_PATH(bezier2Path , 637 , 681.7 , 556.71 , 733.3 , 603.62 , 716.15);
  CURVE_PATH(bezier2Path , 687.78 , 523.91 , 670.37 , 647.26 , 687.3 , 594.65);
  LINE_PATH_TO( bezier2Path , 687.78 , 266.26 );
  LINE_PATH_TO( bezier2Path , 584.18 , 266.26 );
  LINE_PATH_TO( bezier2Path , 584.18 , 530.72 );
  CURVE_PATH(bezier2Path , 562.37 , 620.78 , 584.07 , 571.17 , 576.79 , 601.19);
  CURVE_PATH(bezier2Path , 499.67 , 650 , 547.95 , 640.37 , 527.04 , 650.1);
  CURVE_PATH(bezier2Path , 438.15 , 620.01 , 472.94 , 649.97 , 452.44 , 639.98);
  CURVE_PATH(bezier2Path , 416.51 , 530.72 , 423.87 , 600.05 , 416.65 , 570.29);
  LINE_PATH_TO( bezier2Path , 416.51 , 266.25 );
  LINE_PATH_TO( bezier2Path , 312.23 , 266.25 );
  LINE_PATH_TO( bezier2Path , 312.22 , 266.26 );
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color54 setFill];
  [bezier2Path fill];
  
  

}







@end
