//
//  CustomUIButton.h
//
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>


#define kLabelFont [UIFont fontWithName:@"HelveticaNeue" size:15]
#define kFontColorNormal [UIColor whiteColor]
#define kFontColorHighlighted [UIColor whiteColor]
#define kFontColorDisable [UIColor grayColor]

#define kShadowColorNormal [UIColor blackColor]
#define kShadowColorHighlighted [UIColor whiteColor]
#define kShadowColorDisable [UIColor clearColor]


#define kShadowOffset CGSizeMake(0, 0)

#define kCornerRadius 5

@interface UKCustomUIButton : UIButton {

}

@property (nonatomic, retain) NSDictionary * valuesWithKeys;
@property (nonatomic, retain) NSMutableArray * buttonArray;
@property (nonatomic) int uniqueButtonId;
@property (nonatomic) BOOL isFlatButton;

- (id)initWithFrame:(CGRect)frame title:(NSString *) title;

/*--------------------------------------------------------------------------
 Define the default button Text Style
 --------------------------------------------------------------------------*/

- (void) setTextStyle;

/*--------------------------------------------------------------------------
 Define the button Corner radius
 --------------------------------------------------------------------------*/

- (void) setCornerRadius:(NSInteger)value;

/*--------------------------------------------------------------------------
 Define the button label Font
 --------------------------------------------------------------------------*/
- (void) setLabelFont:(UIFont*)font;

/*--------------------------------------------------------------------------
 Define the button label Text color
 --------------------------------------------------------------------------*/

- (void) setLabelTextColor:(UIColor*)nColor highlightedColor:(UIColor*)hColor disableColor:(UIColor*)dColor;

/*--------------------------------------------------------------------------
 Define the button background with the UIcolor
 --------------------------------------------------------------------------*/

- (void)setStyleWithBackgroundColor:(UIColor*)backgroundColor enableGlossyEffect:(BOOL) glossyEffect;

/*--------------------------------------------------------------------------
 Define the button background with the image
 --------------------------------------------------------------------------*/
- (void)setStyleWithImage:(NSString*)image highlightedImage:(NSString*)hImage disableImage:(NSString*)dImage andInsets:(UIEdgeInsets)insets;

/*--------------------------------------------------------------------------
 Define the color of the text shadow
 --------------------------------------------------------------------------*/

- (void) setLabelTextShadow:(CGSize)shadowOffSet normalColor:(UIColor*)nColor highlightedColor:(UIColor*)hColor disableColor:(UIColor*)dColor;
@end
