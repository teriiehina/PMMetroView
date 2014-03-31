//
//  PMMetroView+Tram.h
//  
//
//  Created by Peter MEUEL on 31/03/2014.
//
//

#import "PMMetroView.h"

@interface PMMetroView (Tram)

- (void)drawTramRect:(CGRect)rect;

-(void)drawT1Rect:(CGRect)rect;
-(void)drawT2Rect:(CGRect)rect;
-(void)drawT3aRect:(CGRect)rect;
-(void)drawT3bRect:(CGRect)rect;
-(void)drawT4Rect:(CGRect)rect;
-(void)drawT5Rect:(CGRect)rect;

@end
