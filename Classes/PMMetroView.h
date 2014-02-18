//
//  LMParisianCommuteStationView.h
//  test
//
//  Created by Peter Meuel on 13/02/2014.
//  Copyright (c) 2014 Peter Meuel. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, LMLine)
{
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
  PARIS_M14
};

@interface PMMetroView : UIView

- (id)initWithFrame:(CGRect)frame lineName:(LMLine)pLineName;


@end
