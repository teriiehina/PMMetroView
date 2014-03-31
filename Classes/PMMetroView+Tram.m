//
//  PMMetroView+Tram.m
//  
//
//  Created by Peter MEUEL on 31/03/2014.
//
//

#import "PMMetroView+Tram.h"


@implementation PMMetroView (Tram)


- (void)drawTramRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);
  
  //// Color Declarations
  UIColor* color30 = [UIColor colorWithRed: 0 green: 0 blue: 0.529 alpha: 1];
  UIColor* color31 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Oval Drawing
  UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(35 * ratioW, 35 * ratioH, 930 * ratioW, 930 * ratioH)];
  [color31 setFill];
  [ovalPath fill];
  [color30 setStroke];
  ovalPath.lineWidth = 70 * ratioH;
  [ovalPath stroke];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 680.49 , 269.68);
  LINE_PATH_TO( bezierPath , 321.9 , 269.68 );
  CURVE_PATH(bezierPath , 277.01 , 313.92 , 321.9 , 269.68 , 277.01 , 270.3);
  CURVE_PATH(bezierPath , 321.24 , 358.23 , 277.01 , 313.92 , 277.01 , 358.81);
  LINE_PATH_TO( bezierPath , 453.33 , 358.23 );
  LINE_PATH_TO( bezierPath , 453.88 , 742.81 );
  CURVE_PATH(bezierPath , 502.32 , 786.53 , 453.88 , 742.81 , 453.88 , 786.53);
  CURVE_PATH(bezierPath , 547.76 , 742.16 , 502.32 , 786.53 , 548.32 , 787.59);
  LINE_PATH_TO( bezierPath , 547.76 , 358.22 );
  LINE_PATH_TO( bezierPath , 679.3 , 358.77 );
  CURVE_PATH(bezierPath , 722.99 , 313.87 , 679.3 , 358.77 , 722.99 , 358.77);
  CURVE_PATH(bezierPath , 680.48 , 269.67 , 723 , 313.87 , 723 , 270.29);
  bezierPath.miterLimit = 4;
  
  [color30 setFill];
  [bezierPath fill];
}


- (void)drawT1Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color1 = UIColor.whiteColor;
  UIColor* color0 = RGBA(0.036 , 0.308 , 0.615 , 1);
  
  //// Oval Drawing
  CGRect ovalRect        = CGRectMake(34 * ratioW, 34 * ratioH, 930 * ratioW, 930 * ratioH);
  UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:ovalRect];
  
  [color1   setFill];
  [ovalPath fill];
  
  [color0   setStroke];
  ovalPath.lineWidth = 70 * ratioH;
  [ovalPath stroke];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  
  MOVE_PATH_TO(bezierPath, 457.6, 752.58);

  LINE_PATH_TO(bezierPath , 457.6 , 355.51);

  CURVE_PATH(bezierPath , 371.02 , 404.9 , 440.38 , 369.07 , 389.68 , 395.49);

  LINE_PATH_TO(bezierPath , 344.56 , 418.36);
  LINE_PATH_TO(bezierPath , 310.31 , 341.15);
  LINE_PATH_TO(bezierPath , 341.08 , 326.86);

  CURVE_PATH(bezierPath , 476.95 , 247.42 , 399.72 , 298.9 , 454.05 , 265.34);

  LINE_PATH_TO(bezierPath , 565.01 , 247.42);
  LINE_PATH_TO(bezierPath , 565.01 , 752.58);
  LINE_PATH_TO(bezierPath , 457.61 , 752.58);
  bezierPath.miterLimit = 4;
  
  [color0 setFill];
  [bezierPath fill];
}


- (void)drawT2Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color  = RGBA(0.664 , 0.094 , 0.455 , 1);
  UIColor* color2 = UIColor.whiteColor;
  
  //// Oval Drawing
  CGRect ovalRect        = CGRectMake(34 * ratioW, 34 * ratioH, 930 * ratioW, 930 * ratioH);
  UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:ovalRect];
  
  [color2 setFill];
  [ovalPath fill];
  
  [color setStroke];
  ovalPath.lineWidth = 70 * ratioH;
  [ovalPath stroke];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  
  MOVE_PATH_TO( bezierPath , 341.5 , 745.08);
  
  LINE_PATH_TO( bezierPath , 341.5 , 678.67 );
  
  CURVE_PATH(bezierPath , 479.38 , 509.95 , 354.27 , 619.96 , 412.21 , 568.52);
  CURVE_PATH(bezierPath , 549.36 , 396.90 , 512.97 , 480.60 , 549.36 , 445.60);
  CURVE_PATH(bezierPath , 465.90 , 318.36 , 549.36 , 353.36 , 520.87 , 318.36);
  CURVE_PATH(bezierPath , 378.61 , 364.02 , 421.45 , 318.36 , 390.82 , 350.54);
  
  LINE_PATH_TO( bezierPath , 325.69 , 294.16 );
  
  CURVE_PATH(bezierPath , 487.29 , 231.95 , 374.38 , 251.82 , 419.33 , 231.95);
  CURVE_PATH(bezierPath , 659.45 , 384.97 , 575.9 , 231.95 , 659.45 , 281.74);
  CURVE_PATH(bezierPath , 543.79 , 565.55 , 659.45 , 471.41 , 604.48 , 510.65);
  CURVE_PATH(bezierPath , 460.89 , 660.82 , 517.98 , 589.26 , 467.17 , 631.46);
  
  LINE_PATH_TO( bezierPath , 668.83 , 660.82 );
  LINE_PATH_TO( bezierPath , 668.83 , 745.08 );
  LINE_PATH_TO( bezierPath , 341.5 , 745.08 );
  
  bezierPath.miterLimit = 4;
  
  [color setFill];
  [bezierPath fill];}

- (void)drawT3aRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color6 = [UIColor colorWithRed: 0.951 green: 0.469 blue: 0.222 alpha: 1];
  UIColor* color7 = [UIColor colorWithRed: 0.941 green: 0.46 blue: 0.225 alpha: 1];
  UIColor* color8 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Oval Drawing
  CGRect ovalRect        = CGRectMake(34 * ratioW, 34 * ratioH, 930 * ratioW, 930 * ratioH);
  UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:ovalRect];

  [color8 setFill];
  [ovalPath fill];
  [color7 setStroke];
  ovalPath.lineWidth = 70 * ratioH;
  [ovalPath stroke];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 340.94 , 774.52);
  CURVE_PATH(bezierPath , 191.59 , 735.59 , 266.74 , 774.52 , 225.73 , 755.95);
  LINE_PATH_TO( bezierPath , 232.5 , 655.52 );
  CURVE_PATH(bezierPath , 334.1 , 689.65 , 253.96 , 671.16 , 290.08 , 689.65);
  CURVE_PATH(bezierPath , 431.65 , 610.67 , 393.52 , 689.65 , 431.65 , 654.51);
  CURVE_PATH(bezierPath , 333 , 530.52 , 431.65 , 551.17 , 385.81 , 530.52);
  LINE_PATH_TO( bezierPath , 279.38 , 530.52 );
  LINE_PATH_TO( bezierPath , 279.38 , 444.65 );
  LINE_PATH_TO( bezierPath , 334.07 , 444.65 );
  CURVE_PATH(bezierPath , 415.99 , 379.38 , 384.74 , 444.65 , 415.99 , 419.36);
  CURVE_PATH(bezierPath , 336.86 , 315.94 , 415.99 , 346.17 , 391.55 , 315.94);
  CURVE_PATH(bezierPath , 241.26 , 352.94 , 289.14 , 315.94 , 257.92 , 338.22);
  LINE_PATH_TO( bezierPath , 203.26 , 276.86 );
  CURVE_PATH(bezierPath , 360.26 , 231 , 247.12 , 247.57 , 295.01 , 231);
  CURVE_PATH(bezierPath , 525.24 , 362.71 , 465.78 , 231 , 525.24 , 293.5);
  CURVE_PATH(bezierPath , 442.25 , 478.86 , 525.24 , 416.45 , 496.97 , 458.43);
  LINE_PATH_TO( bezierPath , 442.25 , 480.86 );
  CURVE_PATH(bezierPath , 542.81 , 607.66 , 498.99 , 491.57 , 542.81 , 535.42);
  CURVE_PATH(bezierPath , 340.93 , 774.5 , 542.89 , 698.42 , 460.84 , 774.5);
  LINE_PATH_TO( bezierPath , 340.94 , 774.52 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color6 setFill];
  [bezierPath fill];
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezier2Path , 715.6 , 412);
  CURVE_PATH(bezier2Path , 745.1 , 405.52 , 729.35 , 410.28 , 739.2 , 408.11);
  CURVE_PATH(bezier2Path , 761.05 , 384.51 , 755.73 , 401.03 , 761.05 , 394.03);
  CURVE_PATH(bezier2Path , 748.83 , 360.52 , 761.05 , 372.94 , 756.97 , 364.93);
  CURVE_PATH(bezier2Path , 712.94 , 353.91 , 740.69 , 356.12 , 728.7 , 353.91);
  CURVE_PATH(bezier2Path , 675.33 , 366.88 , 695.24 , 353.91 , 682.69 , 358.24);
  CURVE_PATH(bezier2Path , 664.83 , 392.81 , 670.08 , 373.28 , 666.58 , 381.92);
  LINE_PATH_TO( bezier2Path , 593.5 , 392.81 );
  CURVE_PATH(bezier2Path , 614.34 , 331.87 , 595.06 , 368.09 , 601.99 , 347.79);
  CURVE_PATH(bezier2Path , 715.39 , 294.52 , 633.96 , 306.97 , 667.64 , 294.52);
  CURVE_PATH(bezier2Path , 798.22 , 312.94 , 746.49 , 294.52 , 774.1 , 300.67);
  CURVE_PATH(bezier2Path , 834.43 , 382.44 , 822.37 , 325.22 , 834.43 , 348.39);
  LINE_PATH_TO( bezier2Path , 834.43 , 512.11 );
  CURVE_PATH(bezier2Path , 834.95 , 544.79 , 834.43 , 521.11 , 834.59 , 532);
  CURVE_PATH(bezier2Path , 839.36 , 564.5 , 835.47 , 554.48 , 836.93 , 561.04);
  CURVE_PATH(bezier2Path , 850.25 , 573.06 , 841.79 , 567.97 , 845.42 , 570.82);
  LINE_PATH_TO( bezier2Path , 850.25 , 583.95 );
  LINE_PATH_TO( bezier2Path , 769.86 , 583.95 );
  CURVE_PATH(bezier2Path , 765.19 , 567.87 , 767.62 , 578.24 , 766.07 , 572.89);
  CURVE_PATH(bezier2Path , 763.12 , 550.76 , 764.32 , 562.86 , 763.63 , 557.16);
  CURVE_PATH(bezier2Path , 727.65 , 579.02 , 752.87 , 561.83 , 741.04 , 571.24);
  CURVE_PATH(bezier2Path , 673.38 , 592.77 , 711.64 , 588.18 , 693.55 , 592.77);
  CURVE_PATH(bezier2Path , 609.58 , 570.86 , 647.64 , 592.77 , 626.38 , 585.46);
  CURVE_PATH(bezier2Path , 584.43 , 508.75 , 592.82 , 556.25 , 584.43 , 535.55);
  CURVE_PATH(bezier2Path , 624.92 , 433.28 , 584.43 , 474 , 597.91 , 448.84);
  CURVE_PATH(bezier2Path , 690.24 , 415.13 , 639.73 , 424.82 , 661.52 , 418.76);
  LINE_PATH_TO( bezier2Path , 715.61 , 412.02 );
  LINE_PATH_TO( bezier2Path , 715.6 , 412 );
  [bezier2Path closePath];
  MOVE_PATH_TO( bezier2Path , 760.79 , 446.5);
  CURVE_PATH(bezier2Path , 746.46 , 453.63 , 756.06 , 449.45 , 751.26 , 451.82);
  CURVE_PATH(bezier2Path , 726.62 , 458.69 , 741.63 , 455.45 , 735.02 , 457.13);
  LINE_PATH_TO( bezier2Path , 709.8 , 461.8 );
  CURVE_PATH(bezier2Path , 675.82 , 471.91 , 694.01 , 464.57 , 682.69 , 467.95);
  CURVE_PATH(bezier2Path , 658.35 , 503.3 , 664.18 , 478.66 , 658.35 , 489.13);
  CURVE_PATH(bezier2Path , 669.01 , 530.65 , 658.35 , 515.92 , 661.91 , 525.05);
  CURVE_PATH(bezier2Path , 694.95 , 539.08 , 676.11 , 536.28 , 684.77 , 539.08);
  CURVE_PATH(bezier2Path , 739.59 , 525.08 , 711.09 , 539.08 , 725.97 , 534.41);
  CURVE_PATH(bezier2Path , 760.79 , 473.99 , 753.2 , 515.74 , 760.27 , 498.72);
  LINE_PATH_TO( bezier2Path , 760.79 , 446.5 );
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color6 setFill];
  [bezier2Path fill];
}


- (void)drawT3bRect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color9 = [UIColor colorWithRed: 0.08 green: 0.613 blue: 0.311 alpha: 1];
  UIColor* color10 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Oval Drawing
  CGRect ovalRect        = CGRectMake(34 * ratioW, 34 * ratioH, 930 * ratioW, 930 * ratioH);
  UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:ovalRect];

  [color10 setFill];
  [ovalPath fill];
  [color9 setStroke];
  ovalPath.lineWidth = 70 * ratioH;
  [ovalPath stroke];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 340.28 , 775.71);
  CURVE_PATH(bezierPath , 190.29 , 736.61 , 265.75 , 775.71 , 224.57 , 757.04);
  LINE_PATH_TO( bezierPath , 231.39 , 656.21 );
  CURVE_PATH(bezierPath , 333.41 , 690.47 , 252.9 , 671.89 , 289.2 , 690.47);
  CURVE_PATH(bezierPath , 431.38 , 611.14 , 393.08 , 690.47 , 431.38 , 655.19);
  CURVE_PATH(bezierPath , 332.32 , 530.64 , 431.38 , 551.37 , 385.33 , 530.64);
  LINE_PATH_TO( bezierPath , 278.44 , 530.64 );
  LINE_PATH_TO( bezierPath , 278.44 , 444.42 );
  LINE_PATH_TO( bezierPath , 333.38 , 444.42 );
  CURVE_PATH(bezierPath , 415.65 , 378.84 , 384.24 , 444.42 , 415.65 , 419.01);
  CURVE_PATH(bezierPath , 336.18 , 315.13 , 415.65 , 345.49 , 391.12 , 315.13);
  CURVE_PATH(bezierPath , 240.19 , 352.29 , 288.26 , 315.13 , 256.92 , 337.53);
  LINE_PATH_TO( bezierPath , 202.03 , 275.88 );
  CURVE_PATH(bezierPath , 359.7 , 229.83 , 246.06 , 246.47 , 294.14 , 229.83);
  CURVE_PATH(bezierPath , 525.38 , 362.1 , 465.66 , 229.83 , 525.38 , 292.61);
  CURVE_PATH(bezierPath , 442.04 , 478.78 , 525.38 , 416.06 , 496.98 , 458.23);
  LINE_PATH_TO( bezierPath , 442.04 , 480.78 );
  CURVE_PATH(bezierPath , 543.03 , 608.13 , 498.99 , 491.55 , 543.03 , 535.57);
  CURVE_PATH(bezierPath , 340.28 , 775.71 , 543.12 , 699.3 , 460.73 , 775.71);
  LINE_PATH_TO( bezierPath , 340.28 , 775.71 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color9 setFill];
  [bezierPath fill];
  
  
  //// Bezier 2 Drawing
  UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezier2Path , 846.5 , 334.54);
  CURVE_PATH(bezier2Path , 878.34 , 438.73 , 867.76 , 361.46 , 878.34 , 396.18);
  CURVE_PATH(bezier2Path , 846.93 , 548.39 , 878.34 , 482.84 , 867.88 , 519.38);
  CURVE_PATH(bezier2Path , 759.23 , 591.88 , 825.98 , 577.37 , 796.76 , 591.88);
  CURVE_PATH(bezier2Path , 702.45 , 577.8 , 735.67 , 591.88 , 716.72 , 587.18);
  CURVE_PATH(bezier2Path , 674.67 , 548.63 , 693.9 , 572.26 , 684.61 , 562.54);
  LINE_PATH_TO( bezier2Path , 674.67 , 584.32 );
  LINE_PATH_TO( bezier2Path , 601.49 , 584.32 );
  LINE_PATH_TO( bezier2Path , 601.49 , 200.91 );
  LINE_PATH_TO( bezier2Path , 675.72 , 200.91 );
  LINE_PATH_TO( bezier2Path , 675.72 , 337.39 );
  CURVE_PATH(bezier2Path , 706.91 , 307.18 , 685.16 , 324.19 , 695.56 , 314.13);
  CURVE_PATH(bezier2Path , 758.31 , 294.17 , 720.35 , 298.51 , 737.51 , 294.17);
  CURVE_PATH(bezier2Path , 846.51 , 334.54 , 795.88 , 294.18 , 825.25 , 307.62);
  LINE_PATH_TO( bezier2Path , 846.5 , 334.54 );
  [bezier2Path closePath];
  MOVE_PATH_TO( bezier2Path , 784.46 , 507.48);
  CURVE_PATH(bezier2Path , 800.49 , 446.54 , 795.13 , 492.04 , 800.49 , 471.71);
  CURVE_PATH(bezier2Path , 792.61 , 396.53 , 800.49 , 426.39 , 797.87 , 409.72);
  CURVE_PATH(bezier2Path , 737.46 , 359.03 , 782.61 , 371.51 , 764.25 , 359.03);
  CURVE_PATH(bezier2Path , 681.53 , 395.75 , 710.33 , 359.03 , 691.69 , 371.27);
  CURVE_PATH(bezier2Path , 673.66 , 446.26 , 676.24 , 408.77 , 673.66 , 425.62);
  CURVE_PATH(bezier2Path , 689.9 , 506.71 , 673.66 , 470.6 , 679.07 , 490.71);
  CURVE_PATH(bezier2Path , 739.55 , 530.67 , 700.79 , 522.67 , 717.34 , 530.67);
  CURVE_PATH(bezier2Path , 784.46 , 507.49 , 758.8 , 530.68 , 773.78 , 522.96);
  LINE_PATH_TO( bezier2Path , 784.46 , 507.48 );
  [bezier2Path closePath];
  bezier2Path.miterLimit = 4;
  
  [color9 setFill];
  [bezier2Path fill];
}


- (void)drawT4Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color11 = [UIColor colorWithRed: 0.975 green: 0.731 blue: 0.117 alpha: 1];
  UIColor* color12 = [UIColor colorWithRed: 0.98 green: 0.721 blue: 0.109 alpha: 1];
  UIColor* color13 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Oval Drawing
  CGRect ovalRect        = CGRectMake(34 * ratioW, 34 * ratioH, 930 * ratioW, 930 * ratioH);
  UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:ovalRect];
  
  [color13 setFill];
  [ovalPath fill];
  [color11 setStroke];
  ovalPath.lineWidth = 70 * ratioH;
  [ovalPath stroke];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 667.1 , 663.81);
  LINE_PATH_TO( bezierPath , 667.1 , 581.18 );
  LINE_PATH_TO( bezierPath , 601.77 , 581.18 );
  LINE_PATH_TO( bezierPath , 601.77 , 243.78 );
  LINE_PATH_TO( bezierPath , 466.58 , 243.78 );
  LINE_PATH_TO( bezierPath , 260.64 , 565.22 );
  LINE_PATH_TO( bezierPath , 260.64 , 663.85 );
  LINE_PATH_TO( bezierPath , 499.62 , 663.85 );
  LINE_PATH_TO( bezierPath , 499.62 , 774.15 );
  LINE_PATH_TO( bezierPath , 601.74 , 774.15 );
  LINE_PATH_TO( bezierPath , 601.74 , 663.85 );
  LINE_PATH_TO( bezierPath , 667.1 , 663.82 );
  MOVE_PATH_TO( bezierPath , 499.63 , 581.19);
  LINE_PATH_TO( bezierPath , 351.54 , 581.19 );
  LINE_PATH_TO( bezierPath , 459.74 , 411.33 );
  CURVE_PATH(bezierPath , 497.97 , 336.97 , 480.66 , 378.17 , 495.82 , 345.91);
  LINE_PATH_TO( bezierPath , 499.62 , 336.97 );
  LINE_PATH_TO( bezierPath , 499.62 , 581.19 );
  LINE_PATH_TO( bezierPath , 499.63 , 581.19 );
  [bezierPath closePath];
  bezierPath.miterLimit = 4;
  
  [color12 setFill];
  [bezierPath fill];
}


- (void)drawT5Rect:(CGRect)rect
{
  MAKE_RATIOS(self.frame, 1000);

  //// Color Declarations
  UIColor* color14 = [UIColor colorWithRed: 0.321 green: 0.094 blue: 0.495 alpha: 1];
  UIColor* color15 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
  
  //// Oval Drawing
  CGRect ovalRect        = CGRectMake(34 * ratioW, 34 * ratioH, 930 * ratioW, 930 * ratioH);
  UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:ovalRect];
  
  [color15 setFill];
  [ovalPath fill];
  [color14 setStroke];
  ovalPath.lineWidth = 70 * ratioH;
  [ovalPath stroke];
  
  
  //// Bezier Drawing
  UIBezierPath* bezierPath = [UIBezierPath bezierPath];
  MOVE_PATH_TO( bezierPath , 679.71 , 592.75);
  CURVE_PATH(bezierPath , 476.44 , 425.5 , 679.71 , 513.26 , 621.29 , 433.07);
  LINE_PATH_TO( bezierPath , 461.31 , 424.79 );
  LINE_PATH_TO( bezierPath , 468.73 , 323.44 );
  LINE_PATH_TO( bezierPath , 659.51 , 323.44 );
  LINE_PATH_TO( bezierPath , 659.51 , 235.52 );
  LINE_PATH_TO( bezierPath , 380.99 , 235.52 );
  LINE_PATH_TO( bezierPath , 359.95 , 511.01 );
  LINE_PATH_TO( bezierPath , 442.49 , 511.73 );
  CURVE_PATH(bezierPath , 565.47 , 603.38 , 540.1 , 512.71 , 565.47 , 565.04);
  CURVE_PATH(bezierPath , 472.6 , 689 , 565.47 , 665.54 , 513.84 , 689);
  CURVE_PATH(bezierPath , 371.99 , 655.09 , 427.42 , 689 , 397.57 , 672.39);
  LINE_PATH_TO( bezierPath , 333.1 , 737.78 );
  CURVE_PATH(bezierPath , 478.6 , 776.12 , 374.19 , 760.95 , 422.37 , 776.12);
  CURVE_PATH(bezierPath , 679.72 , 592.75 , 599.37 , 776.08 , 679.72 , 694.04);
  bezierPath.miterLimit = 4;
  
  [color14 setFill];
  [bezierPath fill];
}


@end
