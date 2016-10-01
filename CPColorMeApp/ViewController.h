//
//  ViewController.h
//  CPColorMeApp
//
//  Created by Student P_07 on 28/09/16.
//  Copyright © 2016 chaitu. All rights reserved.
//

#import <UIKit/UIKit.h>
#define KAllElementHeight 60.0
#define KHorizontalPadding 20.0
#define KVerticalPadding 20.0
@interface ViewController : UIViewController
{
    UILabel *redLabel;
    UISlider *redSlider;
    
    UILabel *greenLabel;
    UISlider *greenSlider;
    
    UILabel *blueLabel;
    UISlider *blueSlider;

    UILabel *alphaLabel;
    UISlider *alphaSlider;
    
    CGFloat screenHeight;
    CGFloat screenWidth;
    CGFloat slider;
}

@end

