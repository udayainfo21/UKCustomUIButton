UKCustomUIButton
================

UKCustomUIButton project is ARC enabled supports from ios 6 version.

Features:

  The UKCustomUIButton allows developer to simplify custom UIButton creation process with the following features
  
  1. Default Button style can be set
  2. Has the option to set the Background of UIButton with the Background color and Background image with the glossy effect.
  3. Lable text color, Hightlight text color and Disable color of the Button title label can be set.
  4. Has the option to set the UIButton titlelabel text shadow
  
To Add UKCustomUIButton in your project

1. Add Quartzcore framework in build phases LinkBinaryWithLibraries
2. Drag and Drop UKCustomUIButton.h and UKCustomUIButton.m in your Project
3. Import UKCustomUIButton.h in header file.

Usage Example:

Add In viewDidLoad of the view controller,

    UKCustomUIButton * btn = [[UKCustomUIButton alloc] initWithFrame:frame title:@"Button"];
    btn.uniqueButtonId = 101;
    btn.tag = 102;
    btn.valuesWithKeys = dict;
    [btn setStyleWithBackgroundColor:[UIColor greenColor] enableGlossyEffect:NO];
    [btn setLabelTextColor:[UIColor blackColor] highlightedColor:[UIColor yellowColor] disableColor:[UIColor grayColor]];
    [btn setLabelTextShadow:CGSizeMake(-1, -1) normalColor:[UIColor blackColor] highlightedColor:nil disableColor:nil];
    [btn setLabelFont:[UIFont fontWithName:@"Trebuchet MS" size:20]];
    [btn setCornerRadius:10];
    [btn addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    -(IBAction)buttonPressed:(id)sender {
    
    }
