//
//  TMVViewController.m
//  TestMetroView
//
//  Created by Peter Meuel on 19/02/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "TMVViewController.h"

#import "PMMetroView.h"

#import "SVGKImage.h"
#import "SVGKImageView.h"
#import "SVGKFastImageView.h"

const NSUInteger  rowsNumber  = 4;
const NSUInteger  colsNumber  = 4;
const CGFloat     padding     = 10;
const CGFloat     viewSize    = 20;
const CGFloat     initalX     = 20;
const CGFloat     initalY     = 40;

NSUInteger currentRow = 0;

@interface TMVViewController ()

@property (nonatomic , strong) UIScrollView *scrollView;

@end

@implementation TMVViewController

- (UIScrollView *)scrollView
{
  if (_scrollView) {
    return _scrollView;
  }
  
  _scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
  
  return _scrollView;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  [self.view addSubview:self.scrollView];
  
  [self addImageViewsFromCode];
//  [self addImageViewsFromSVG];
//  [self addImageViewsFromPNG];
  
  [self addViewsResizer];
  
}

- (void)addViewsResizer
{
  CGRect sliderFrame    = CGRectMake(10,
                                     self.view.frame.size.height - 30,
                                     self.view.frame.size.width - 20,
                                     20);
  
  UISlider *sizeSlider    = [[UISlider alloc] initWithFrame:sliderFrame];
  sizeSlider.minimumValue = 0;
  sizeSlider.maximumValue = 200;
  sizeSlider.value        = viewSize;
  
  [sizeSlider addTarget:self
                 action:@selector(sizeDidChange:)
       forControlEvents:UIControlEventValueChanged];
  
  [self.view addSubview:sizeSlider];
}

- (void)addImageViewsFromCode
{
  CGFloat     spacing     = padding + viewSize;
  
  LMLine      lines[22]   = { PARIS_M1  , PARIS_M2  , PARIS_M3  , PARIS_M3b ,
                              PARIS_M4  , PARIS_M5  , PARIS_M6  , PARIS_M7  ,
                              PARIS_M7b , PARIS_M8  , PARIS_M9  , PARIS_M10 ,
                              PARIS_M11 , PARIS_M12 , PARIS_M13 , PARIS_M14 ,
                              PARIS_T1  , PARIS_T2  , PARIS_T3a , PARIS_T3b ,
                              PARIS_T4  , PARIS_T5 };
  
  NSUInteger row, col;
  NSUInteger imagesByRow = 4;
  
  for (int lineIndex = 0; lineIndex < 22; lineIndex++)
  {
    row = lineIndex / imagesByRow;
    col = lineIndex % imagesByRow;
  
    LMLine line = lines[lineIndex];
    CGRect rect = CGRectMake(col * spacing + initalX ,
                             (row + currentRow) * spacing + initalY ,
                             viewSize ,
                             viewSize);
    
    PMMetroView *view     = [[PMMetroView alloc] initWithFrame:rect lineName:line];
    view.backgroundColor  = UIColor.clearColor;
    view.tag              = (row + currentRow) * rowsNumber + col;
    
    [self.scrollView addSubview:view];

  }
  
//  for (row = 0; row < rowsNumber; row++)
//  {
//    for (NSUInteger col = 0; col < colsNumber; col++)
//    {
//      LMLine line = lines[row * rowsNumber + col];
//      CGRect rect = CGRectMake(col * spacing + initalX , (row + currentRow) * spacing + initalY , viewSize , viewSize);
//      
//      PMMetroView *view = [[PMMetroView alloc] initWithFrame:rect lineName:line];
//      
//      view.backgroundColor  = UIColor.clearColor;
//      view.tag              = (row + currentRow) * rowsNumber + col;
//      
//      [self.scrollView addSubview:view];
//    }
//  }
  
  currentRow += row;
}

- (void)addImageViewsFromSVG
{
  CGFloat     spacing     = padding + viewSize;
  
  NSString *lines[16]   = { @"metrol1.svg"  , @"metrol2.svg"  , @"metrol3.svg"  , @"metrol3b.svg" ,
                            @"metrol4.svg"  , @"metrol5.svg"  , @"metrol6.svg"  , @"metrol7.svg"  ,
                            @"metrol7b.svg" , @"metrol8.svg"  , @"metrol9.svg"  , @"metrol10.svg" ,
                            @"metrol11.svg" , @"metrol12.svg" , @"metrol13.svg" , @"metrol14.svg"};
  
  NSUInteger row;
  
  for (row = 0; row < rowsNumber; row++)
  {
    for (NSUInteger col = 0; col < colsNumber; col++)
    {
      NSString *imageName = lines[row * rowsNumber + col];
      SVGKImage* newImage = [SVGKImage imageNamed:imageName];
      SVGKImageView* view = [[SVGKFastImageView alloc] initWithSVGKImage:newImage];
      CGRect rect = CGRectMake(col * spacing + initalX , (row + currentRow) * spacing + initalY , viewSize , viewSize);
      
      view.frame = rect;
      
      view.backgroundColor  = UIColor.clearColor;
      view.tag              = (row + currentRow) * rowsNumber + col;
      
      [self.scrollView addSubview:view];
    }
  }
  
  currentRow += row;
}

- (void)addImageViewsFromPNG
{
  CGFloat     spacing     = padding + viewSize;
  
  NSString *lines[16]   = { @"metrol1.svg.png"  , @"metrol2.svg.png"  , @"metrol3.svg.png"  , @"metrol3b.svg.png" ,
                            @"metrol4.svg.png"  , @"metrol5.svg.png"  , @"metrol6.svg.png"  , @"metrol7.svg.png"  ,
                            @"metrol7b.svg.png" , @"metrol8.svg.png"  , @"metrol9.svg.png"  , @"metrol10.svg.png" ,
                            @"metrol11.svg.png" , @"metrol12.svg.png" , @"metrol13.svg.png" , @"metrol14.svg.png"};
  
  NSUInteger row;
  
  for (row = 0; row < rowsNumber; row++)
  {
    for (NSUInteger col = 0; col < colsNumber; col++)
    {
      NSString *imageName = lines[row * rowsNumber + col];
      UIImage* newImage = [UIImage imageNamed:imageName];
      UIImageView* view = [[UIImageView alloc] initWithImage:newImage];
      CGRect rect = CGRectMake(col * spacing + initalX , (row + currentRow) * spacing + initalY , viewSize , viewSize);
      
      view.frame = rect;
      
      view.backgroundColor  = UIColor.clearColor;
      view.tag              = (row + currentRow) * rowsNumber + col;
      
      [self.scrollView addSubview:view];
    }
  }
  
  currentRow += row;
}

- (IBAction)sizeDidChange:(UISlider *)sender
{
  NSLog(@"%f" , sender.value);
  
  CGFloat maxX = 0;
  CGFloat maxY = 0;
  
  for (UIView *view in self.scrollView.subviews)
  {
    if ( [view isKindOfClass:[UISlider class]] ) continue;
    
    int row = view.tag / 4;
    int col = view.tag % 4;
    CGFloat     spacing     = padding + sender.value;
    
    CGRect viewFrame  = view.frame;
    viewFrame.size    = CGSizeMake(sender.value, sender.value);
    viewFrame         = CGRectMake(col * spacing + initalX , row * spacing + initalY , sender.value , sender.value);

    view.frame        = viewFrame;
    
    maxX = MAX(maxX, view.frame.origin.x + view.frame.size.width);
    maxY = MAX(maxY, view.frame.origin.y + view.frame.size.height);
    
    [view setNeedsDisplay];
  }
  
  self.scrollView.contentSize = CGSizeMake(maxX, maxY);
}


@end
