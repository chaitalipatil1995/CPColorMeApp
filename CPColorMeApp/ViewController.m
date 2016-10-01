//
//  ViewController.m
//  CPColorMeApp
//
//  Created by Student P_07 on 28/09/16.
//  Copyright © 2016 chaitu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    screenWidth = [[UIScreen mainScreen]bounds].size.width;
    screenHeight = [[UIScreen mainScreen]bounds].size.height;
    
    blueLabel = [[UILabel alloc]initWithFrame:CGRectMake(KHorizontalPadding, screenHeight-125, KAllElementHeight, KAllElementHeight)];
    [blueLabel setBackgroundColor:[UIColor blueColor]];
    [ blueLabel setBackgroundColor:[UIColor blueColor]];
    [ blueLabel setTextColor:[UIColor blackColor]];
    [self.view addSubview:blueLabel];
    
    blueSlider = [[UISlider alloc]initWithFrame:CGRectMake(2*KHorizontalPadding+ KAllElementHeight,screenHeight- 125, 300, KAllElementHeight)];
    [blueSlider setBackgroundColor:[UIColor blueColor]];
    [blueSlider addTarget:self action:@selector(blueSlider:) forControlEvents:UIControlEventValueChanged];
    blueSlider.thumbTintColor = [UIColor blackColor];
    [self.view addSubview:blueSlider];
    
    
    greenLabel=[[UILabel alloc]initWithFrame:CGRectMake(KHorizontalPadding,(screenHeight-105-2*KVerticalPadding-(KAllElementHeight)), KAllElementHeight,KAllElementHeight)];
    [greenLabel setBackgroundColor:[UIColor greenColor]];
    [ greenLabel setTextColor:[UIColor blackColor]];
    [self.view addSubview:greenLabel];
    
    greenSlider=[[UISlider alloc]initWithFrame:CGRectMake(2*KHorizontalPadding+ KAllElementHeight,screenHeight- 125-KAllElementHeight-KVerticalPadding, 300, KAllElementHeight)];
    [greenSlider setBackgroundColor:[UIColor greenColor]];
    [greenSlider addTarget:self action:@selector(greenSlider:) forControlEvents:UIControlEventValueChanged];
    greenSlider.thumbTintColor = [UIColor blackColor];
    [self.view addSubview:greenSlider];
    
    
    redLabel=[[UILabel alloc]initWithFrame:CGRectMake(KHorizontalPadding,(screenHeight-105-3*KVerticalPadding-(2*KAllElementHeight)), KAllElementHeight,KAllElementHeight)];
    [redLabel setBackgroundColor:[UIColor redColor]];
    [ redLabel setTextColor:[UIColor blackColor]];
    [self.view addSubview:redLabel];

    redSlider=[[UISlider alloc]initWithFrame:CGRectMake(2*KHorizontalPadding+ KAllElementHeight,screenHeight- 125-2*KAllElementHeight-2*KVerticalPadding, 300, KAllElementHeight)];
    [redSlider setBackgroundColor:[UIColor redColor]];
    [redSlider addTarget:self action:@selector(redSlider:) forControlEvents:UIControlEventValueChanged];
    redSlider.thumbTintColor = [UIColor blackColor];
    [self.view addSubview:redSlider];
    
    
    
    alphaLabel=[[UILabel alloc]initWithFrame:CGRectMake(KHorizontalPadding,(screenHeight-105-4*KVerticalPadding-(3*KAllElementHeight)), KAllElementHeight,KAllElementHeight)];
    [alphaLabel setBackgroundColor:[UIColor whiteColor]];
    [ alphaLabel setTextColor:[UIColor blackColor]];
    [self.view addSubview:alphaLabel];
    
    alphaSlider=[[UISlider alloc]initWithFrame:CGRectMake(2*KHorizontalPadding+ KAllElementHeight,screenHeight- 125-3*KAllElementHeight-2*KVerticalPadding, 300, KAllElementHeight)];
    [alphaSlider addTarget:self action:@selector(alphaSlider:) forControlEvents:UIControlEventValueChanged];
    alphaSlider.thumbTintColor = [UIColor blackColor];
    [self.view addSubview:alphaSlider];
    

    
    [self colorMe];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) blueSlider:(id) sender{
    
    UISlider *localRedSlider = sender;
    // float colourValue;
    blueLabel.text= [NSString stringWithFormat:@"%0.2f",blueSlider.value];
    self.view.backgroundColor= [UIColor colorWithRed:redSlider.value green:greenSlider.value blue:localRedSlider.value alpha:alphaSlider.value];
    [self colorMe];
    
}

-(void) greenSlider:(id) sender{
    
    UISlider *localGreenSlider = sender;
    greenLabel.text= [NSString stringWithFormat:@"%0.2f",greenSlider.value];
    self.view.backgroundColor= [UIColor colorWithRed:redSlider.value green:localGreenSlider.value blue:blueSlider.value alpha:alphaSlider.value];
    [self colorMe];
    
}


-(void) redSlider:(id) sender{
    
    UISlider *localRedSlider = sender;
    redLabel.text= [NSString stringWithFormat:@"%0.2f",redSlider.value];
    self.view.backgroundColor= [UIColor colorWithRed:localRedSlider.value green:greenSlider.value blue:blueSlider.value alpha:alphaSlider.value];
    [self colorMe];
}


-(void) alphaSlider:(id) sender{
    
    UISlider *localAlphaSlider = sender;
    alphaLabel.text= [NSString stringWithFormat:@"%0.2f",alphaSlider.value];
    self.view.backgroundColor= [UIColor colorWithRed:redSlider.value green:greenSlider.value blue:blueSlider.value alpha:localAlphaSlider.value];
    [self colorMe];
}


-(void) colorMe{
    self.view.backgroundColor=[ UIColor colorWithRed:redSlider.value green:greenSlider.value blue:blueSlider.value alpha:alphaSlider.value];
}

@end
