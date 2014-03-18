//
//  CustomUIButton.m
//
//

#import "UKCustomUIButton.h"

@implementation UKCustomUIButton

@synthesize valuesWithKeys, uniqueButtonId, buttonArray, isFlatButton;

- (id)initWithFrame:(CGRect)frame title:(NSString *) title
{
    self = [super initWithFrame:frame];

    if (self) {
        // Initialization code
       
        [self setTitle:title forState:UIControlStateNormal];
        [self setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
        [self setTextStyle];
    }
    return self;
}

# pragma mark -
# pragma mark Set up the button with a backgroundColor
# pragma mark -

- (void)setStyleWithBackgroundColor:(UIColor*)backgroundColor enableGlossyEffect:(BOOL) glossyEffect
{
    
    if(glossyEffect) {
        // Create a shiny layer that goes on top of the button
        CAGradientLayer *shineLayer = [CAGradientLayer layer];
        shineLayer.frame = self.layer.bounds;
        // Set the gradient colors
        shineLayer.colors = [NSArray arrayWithObjects:
                             (id)[UIColor colorWithWhite:1.0f alpha:0.4f].CGColor,
                             (id)[UIColor colorWithWhite:1.0f alpha:0.2f].CGColor,
                             (id)[UIColor colorWithWhite:0.75f alpha:0.2f].CGColor,
                             (id)[UIColor colorWithWhite:0.4f alpha:0.2f].CGColor,
                             (id)[UIColor colorWithWhite:1.0f alpha:0.4f].CGColor,
                             nil];
        // Set the relative positions of the gradien stops
        shineLayer.locations = [NSArray arrayWithObjects:
                                [NSNumber numberWithFloat:0.0f],
                                [NSNumber numberWithFloat:0.5f],
                                [NSNumber numberWithFloat:0.5f],
                                [NSNumber numberWithFloat:0.8f],
                                [NSNumber numberWithFloat:1.0f],
                                nil];
        
        // Add the layer to the button
        [self.layer addSublayer:shineLayer];
    }
    
    // Get the button layer and give it rounded corners with a semi-transparant button
    CALayer *layer = self.layer;
    layer.cornerRadius = kCornerRadius;
    layer.masksToBounds = YES;
    layer.borderWidth = 2.0f;
    layer.borderColor = [UIColor colorWithWhite:0.4f alpha:0.2f].CGColor;
    [self setBackgroundColor:backgroundColor];

}

- (void) setCornerRadius:(NSInteger)value {
    self.layer.cornerRadius = value;
}

# pragma mark -
# pragma mark Set up the button with a image
# pragma mark -

- (void)setStyleWithImage:(NSString*)image highlightedImage:(NSString*)hImage disableImage:(NSString*)dImage andInsets:(UIEdgeInsets)insets {
    
    // Define resizable images
    UIImage *resizableButton = [[UIImage imageNamed:image] resizableImageWithCapInsets:insets];
    UIImage *resizableButtonHighlighted = [[UIImage imageNamed:hImage] resizableImageWithCapInsets:insets];
    UIImage *resizableButtonDisabled = [[UIImage imageNamed:dImage] resizableImageWithCapInsets:insets];
    
    // Set resizable background image
    [self setBackgroundImage:resizableButton forState:UIControlStateNormal];
    [self setBackgroundImage:resizableButtonHighlighted forState:UIControlStateHighlighted];
    [self setBackgroundImage:resizableButtonDisabled forState:UIControlStateDisabled];
    
    [self setTextStyle];
    
}

/*--------------------------------------------------------------------------
 Define the color of the label for every state
 --------------------------------------------------------------------------*/
- (void) setLabelTextColor:(UIColor*)nColor highlightedColor:(UIColor*)hColor disableColor:(UIColor*)dColor
{
    [self setTitleColor:nColor forState:UIControlStateNormal];
    [self setTitleColor:hColor forState:UIControlStateHighlighted];
    [self setTitleColor:dColor forState:UIControlStateDisabled];

}

- (void) setLabelFont:(UIFont*)font {
    
    [self.titleLabel setFont:font];
    
}

- (void) setLabelTextShadow:(CGSize)shadowOffSet normalColor:(UIColor*)nColor highlightedColor:(UIColor*)hColor disableColor:(UIColor*)dColor{
    
    [self.titleLabel setShadowOffset:shadowOffSet];
    [self setTitleShadowColor:nColor forState:UIControlStateNormal];
    [self setTitleShadowColor:hColor forState:UIControlStateHighlighted];
    [self setTitleShadowColor:dColor forState:UIControlStateDisabled];
    
}

# pragma mark -
# pragma mark Set up the button text
# pragma mark -


- (void) setTextStyle {
    
    /*--------------------------------------------------------------------------
     By default
     --------------------------------------------------------------------------*/
    
    [self.titleLabel setFont:kLabelFont];
    
    [self.titleLabel setShadowOffset:kShadowOffset];
    
    [self setTitleShadowColor:kShadowColorNormal forState:UIControlStateNormal];
    [self setTitleColor:kFontColorNormal forState:UIControlStateNormal];
    
    [self setTitleShadowColor:kShadowColorHighlighted forState:UIControlStateHighlighted];
    [self setTitleColor:kFontColorHighlighted forState:UIControlStateHighlighted];
    
    [self setTitleShadowColor:kShadowColorDisable forState:UIControlStateDisabled];
    [self setTitleColor:kFontColorDisable forState:UIControlStateDisabled];
    
}

@end
