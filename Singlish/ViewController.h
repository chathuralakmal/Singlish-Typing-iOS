
//  ViewController.h
//  Singlish
//
//  Created by Chathura on 10/21/16.
//  Copyright © 2016 Chathura. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextViewDelegate>{
    NSString *text;
    int nVowels;
    NSMutableArray *consonants;
    NSMutableArray *consonantsUni;
    NSMutableArray *vowels;
    NSMutableArray *vowelsUni;
    NSMutableArray *vowelModifiersUni;
    NSMutableArray *specialConsonants;
    NSMutableArray *specialConsonantsUni;
    NSMutableArray *specialCharUni;
    NSMutableArray *specialChar;
}

@property (strong, nonatomic) IBOutlet UITextView *inputTextView;
@property (strong, nonatomic) IBOutlet UITextView *outputTextView;

@end

