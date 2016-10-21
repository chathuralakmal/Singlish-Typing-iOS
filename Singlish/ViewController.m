//
//  ViewController.m
//  Singlish
//
//  Created by Chathura on 10/21/16.
//  Copyright © 2016 Chathura. All rights reserved.
//


/**
 *
 * Logic is from http://ucsc.cmb.ac.lk/ltrl/services/feconverter/t1.html javascript code.
 *
 **/

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    self.inputTextView.delegate = self;
    //self.outputTextView.delegate = self;
    
    consonants = [[NSMutableArray alloc]init];
    consonantsUni = [[NSMutableArray alloc]init];
    vowels = [[NSMutableArray alloc]init];
    vowelsUni = [[NSMutableArray alloc]init];
    vowelModifiersUni = [[NSMutableArray alloc]init];
    specialConsonants = [[NSMutableArray alloc]init];
    specialConsonantsUni = [[NSMutableArray alloc]init];
    specialCharUni = [[NSMutableArray alloc]init];
    specialChar = [[NSMutableArray alloc]init];
    
    [vowelsUni insertObject:@"ඌ" atIndex:0];
    [vowelsUni insertObject:@"ඕ" atIndex:1];
    [vowelsUni insertObject:@"ඕ" atIndex:2];
    [vowelsUni insertObject:@"ආ" atIndex:3];
    [vowelsUni insertObject:@"ආ" atIndex:4];
    [vowelsUni insertObject:@"ඈ" atIndex:5];
    [vowelsUni insertObject:@"ඈ" atIndex:6];
    [vowelsUni insertObject:@"ඈ" atIndex:7];
    [vowelsUni insertObject:@"ඊ" atIndex:8];
    [vowelsUni insertObject:@"ඊ" atIndex:9];
    [vowelsUni insertObject:@"ඊ" atIndex:10];
    [vowelsUni insertObject:@"ඊ" atIndex:11];
    [vowelsUni insertObject:@"ඒ" atIndex:12];
    [vowelsUni insertObject:@"ඒ" atIndex:13];
    [vowelsUni insertObject:@"ඒ" atIndex:14];
    [vowelsUni insertObject:@"ඌ" atIndex:15];
    [vowelsUni insertObject:@"ඌ" atIndex:16];
    [vowelsUni insertObject:@"ඖ" atIndex:17];
    [vowelsUni insertObject:@"ඇ" atIndex:18];
    [vowelsUni insertObject:@"අ" atIndex:19];
    [vowelsUni insertObject:@"ඇ" atIndex:20];
    [vowelsUni insertObject:@"ඉ" atIndex:21];
    [vowelsUni insertObject:@"එ" atIndex:22];
    [vowelsUni insertObject:@"උ" atIndex:23];
    [vowelsUni insertObject:@"ඔ" atIndex:24];
    [vowelsUni insertObject:@"ඓ" atIndex:25];
    
    nVowels=26;
    
    [vowels insertObject:@"oo" atIndex:0];
    [vowels insertObject:@"o\\)" atIndex:1];
    [vowels insertObject:@"oe" atIndex:2];
    [vowels insertObject:@"aa" atIndex:3];
    [vowels insertObject:@"a\\)" atIndex:4];
    [vowels insertObject:@"Aa" atIndex:5];
    [vowels insertObject:@"A\\)" atIndex:6];
    [vowels insertObject:@"ae" atIndex:7];
    [vowels insertObject:@"ii" atIndex:8];
    [vowels insertObject:@"i\\)" atIndex:9];
    [vowels insertObject:@"ie" atIndex:10];
    [vowels insertObject:@"ee" atIndex:11];
    [vowels insertObject:@"ea" atIndex:12];
    [vowels insertObject:@"e\\)" atIndex:13];
    [vowels insertObject:@"ei" atIndex:14];
    [vowels insertObject:@"uu" atIndex:15];
    [vowels insertObject:@"u\\)" atIndex:16];
    [vowels insertObject:@"au" atIndex:17];
    [vowels insertObject:@"/\a" atIndex:18];
    [vowels insertObject:@"a" atIndex:19];
    [vowels insertObject:@"A" atIndex:20];
    [vowels insertObject:@"i" atIndex:21];
    [vowels insertObject:@"e" atIndex:22];
    [vowels insertObject:@"u" atIndex:23];
    [vowels insertObject:@"o" atIndex:24];
    [vowels insertObject:@"I" atIndex:25];
    
    [vowelModifiersUni insertObject:@"ූ" atIndex:0];
    [vowelModifiersUni insertObject:@"ෝ" atIndex:1];
    [vowelModifiersUni insertObject:@"ෝ" atIndex:2];
    [vowelModifiersUni insertObject:@"ා" atIndex:3];
    [vowelModifiersUni insertObject:@"ා" atIndex:4];
    [vowelModifiersUni insertObject:@"ෑ" atIndex:5];
    [vowelModifiersUni insertObject:@"ෑ" atIndex:6];
    [vowelModifiersUni insertObject:@"ෑ" atIndex:7];
    [vowelModifiersUni insertObject:@"ී" atIndex:8];
    [vowelModifiersUni insertObject:@"ී" atIndex:9];
    [vowelModifiersUni insertObject:@"ී" atIndex:10];
    [vowelModifiersUni insertObject:@"ී" atIndex:11];
    [vowelModifiersUni insertObject:@"ේ" atIndex:12];
    [vowelModifiersUni insertObject:@"ේ" atIndex:13];
    [vowelModifiersUni insertObject:@"ේ" atIndex:14];
    [vowelModifiersUni insertObject:@"ූ" atIndex:15];
    [vowelModifiersUni insertObject:@"ූ" atIndex:16];
    [vowelModifiersUni insertObject:@"ෞ" atIndex:17];
    [vowelModifiersUni insertObject:@"ැ" atIndex:18];
    [vowelModifiersUni insertObject:@"" atIndex:19];
    [vowelModifiersUni insertObject:@"ැ" atIndex:20];
    [vowelModifiersUni insertObject:@"ි" atIndex:21];
    [vowelModifiersUni insertObject:@"ෙ" atIndex:22];
    [vowelModifiersUni insertObject:@"ු" atIndex:23];
    [vowelModifiersUni insertObject:@"ො" atIndex:24];
    [vowelModifiersUni insertObject:@"ෛ" atIndex:25];
    
    
    
    [specialConsonantsUni insertObject:@"ං" atIndex:0];
    [specialConsonantsUni insertObject:@"ඃ" atIndex:1];
    [specialConsonantsUni insertObject:@"ඞ" atIndex:2];
    [specialConsonantsUni insertObject:@"ඍ" atIndex:3];
    
    //special characher Repaya
    [specialConsonantsUni insertObject:[NSString stringWithFormat:@"ර්ර්"] atIndex:4];
    [specialConsonantsUni insertObject:[NSString stringWithFormat:@"ර්ර්"] atIndex:5];
 
    [specialConsonants insertObject:@"/\\n/g" atIndex:0];
    [specialConsonants insertObject:@"/\\h/g" atIndex:1];
    [specialConsonants insertObject:@"/\\N/g" atIndex:2];
    [specialConsonants insertObject:@"/\\R/g" atIndex:3];
    
    //special characher Repaya
    [specialConsonants insertObject:@"/R/g" atIndex:4];
    [specialConsonants insertObject:@"/\\r/g" atIndex:5];
    
    
    [consonantsUni insertObject:@"ඬ" atIndex:0];
    [consonantsUni insertObject:@"ඳ" atIndex:1];
    [consonantsUni insertObject:@"ඟ" atIndex:2];
    [consonantsUni insertObject:@"ථ" atIndex:3];
    [consonantsUni insertObject:@"ධ" atIndex:4];
    [consonantsUni insertObject:@"ඝ" atIndex:5];
    [consonantsUni insertObject:@"ඡ" atIndex:6];
    [consonantsUni insertObject:@"ඵ" atIndex:7];
    [consonantsUni insertObject:@"භ" atIndex:8];
    [consonantsUni insertObject:@"ශ" atIndex:9];
    [consonantsUni insertObject:@"ෂ" atIndex:10];
    [consonantsUni insertObject:@"ඥ" atIndex:11];
    [consonantsUni insertObject:@"ඤ" atIndex:12];
    [consonantsUni insertObject:@"ළු" atIndex:13];
    [consonantsUni insertObject:@"ද" atIndex:14];
    [consonantsUni insertObject:@"ච" atIndex:15];
    [consonantsUni insertObject:@"ඛ" atIndex:16];
    [consonantsUni insertObject:@"ත" atIndex:17];
    [consonantsUni insertObject:@"ට" atIndex:18];
    [consonantsUni insertObject:@"ක" atIndex:19];
    [consonantsUni insertObject:@"ඩ" atIndex:20];
    [consonantsUni insertObject:@"න" atIndex:21];
    [consonantsUni insertObject:@"ප" atIndex:22];
    [consonantsUni insertObject:@"බ" atIndex:23];
    [consonantsUni insertObject:@"ම" atIndex:24];
    [consonantsUni insertObject:@"ය" atIndex:25];
    [consonantsUni insertObject:@"ය" atIndex:26];
    [consonantsUni insertObject:@"ය" atIndex:27];
    [consonantsUni insertObject:@"ජ" atIndex:28];
    [consonantsUni insertObject:@"ල" atIndex:29];
    [consonantsUni insertObject:@"ව" atIndex:30];
    [consonantsUni insertObject:@"ව" atIndex:31];
    [consonantsUni insertObject:@"ස" atIndex:32];
    [consonantsUni insertObject:@"හ" atIndex:33];
    [consonantsUni insertObject:@"ණ" atIndex:34];
    [consonantsUni insertObject:@"ළ" atIndex:35];
    [consonantsUni insertObject:@"ඛ" atIndex:36];
    [consonantsUni insertObject:@"ඝ" atIndex:37];
    [consonantsUni insertObject:@"ඨ" atIndex:38];
    [consonantsUni insertObject:@"ඪ" atIndex:39];
    [consonantsUni insertObject:@"ඵ" atIndex:40];
    [consonantsUni insertObject:@"ඹ" atIndex:41];
    [consonantsUni insertObject:@"ෆ" atIndex:42];
    [consonantsUni insertObject:@"ඣ" atIndex:43];
    [consonantsUni insertObject:@"ග" atIndex:44];
    
    [consonantsUni insertObject:@"ර" atIndex:45];
    
    [specialCharUni insertObject:@"ෲ" atIndex:0];
    [specialCharUni insertObject:@"ෘ" atIndex:1];
    
    
    [consonants insertObject:@"nnd" atIndex:0];
    [consonants insertObject:@"nndh" atIndex:1];
    [consonants insertObject:@"nng" atIndex:2];
    [consonants insertObject:@"Th" atIndex:3];
    [consonants insertObject:@"Dh" atIndex:4];
    [consonants insertObject:@"gh" atIndex:5];
    [consonants insertObject:@"Ch" atIndex:6];
    [consonants insertObject:@"ph" atIndex:7];
    [consonants insertObject:@"bh" atIndex:8];
    [consonants insertObject:@"sh" atIndex:9];
    [consonants insertObject:@"Sh" atIndex:10];
    [consonants insertObject:@"GN" atIndex:11];
    [consonants insertObject:@"KN" atIndex:12];
    [consonants insertObject:@"Lu" atIndex:13];
    [consonants insertObject:@"dh" atIndex:14];
    [consonants insertObject:@"ch" atIndex:15];
    [consonants insertObject:@"kh" atIndex:16];
    [consonants insertObject:@"th" atIndex:17];
    [consonants insertObject:@"t" atIndex:18];
    [consonants insertObject:@"k" atIndex:19];
    [consonants insertObject:@"d" atIndex:20];
    [consonants insertObject:@"n" atIndex:21];
    [consonants insertObject:@"p" atIndex:22];
    [consonants insertObject:@"b" atIndex:23];
    [consonants insertObject:@"m" atIndex:24];
    [consonants insertObject:@"y" atIndex:25];
    [consonants insertObject:@"Y" atIndex:26];
    [consonants insertObject:@"y" atIndex:27];
    [consonants insertObject:@"j" atIndex:28];
    [consonants insertObject:@"l" atIndex:29];
    [consonants insertObject:@"v" atIndex:30];
    [consonants insertObject:@"w" atIndex:31];
    [consonants insertObject:@"s" atIndex:32];
    [consonants insertObject:@"h" atIndex:33];
    [consonants insertObject:@"N" atIndex:34];
    [consonants insertObject:@"L" atIndex:35];
    [consonants insertObject:@"K" atIndex:36];
    [consonants insertObject:@"G" atIndex:37];
    [consonants insertObject:@"T" atIndex:38];
    [consonants insertObject:@"D" atIndex:39];
    [consonants insertObject:@"P" atIndex:40];
    [consonants insertObject:@"B" atIndex:41];
    [consonants insertObject:@"f" atIndex:42];
    [consonants insertObject:@"q" atIndex:43];
    [consonants insertObject:@"g" atIndex:44];
    [consonants insertObject:@"r" atIndex:45];
    
    [specialChar insertObject:@"ruu" atIndex:0];
    [specialChar insertObject:@"ru" atIndex:1];
    
   
    
    [_inputTextView.layer setBorderColor:[[[UIColor grayColor] colorWithAlphaComponent:0.5] CGColor]];
    [_inputTextView.layer setBorderWidth:2.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)startText{
    NSString * s,*r,*v;
    text = self.inputTextView.text;
    
    //special consonents
    for(int i=0;i<[specialConsonants count];i++){
        text = [text stringByReplacingOccurrencesOfString:specialConsonants[i] withString:specialConsonantsUni[i]];
        
    }
     //consonents + special Chars
    for (int i=0; i<[specialCharUni count]; i++) {
        for(int j=0; j<[consonants count];j++){
            s = [NSString stringWithFormat:@"%@%@",consonants[j],specialChar[i]];
            v = [NSString stringWithFormat:@"%@%@",consonantsUni[j],specialCharUni[i]];
            
//            NSError *error = nil;
//            NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:s options:NSRegularExpressionCaseInsensitive error:&error];
//            r = [regex stringByReplacingMatchesInString:s options:0 range:NSMakeRange(0, [s length]) withTemplate:@""];
            
            text = [text stringByReplacingOccurrencesOfString:s withString:v];
        }
    }

     //consonants + Rakaransha + vowel modifiers
    
    for(int j=0;j<[consonants count];j++){
        for(int i=0;i<[vowels count];i++){
            s = [NSString stringWithFormat:@"%@r%@",consonants[j],vowels[i]];
            v = [NSString stringWithFormat:@"%@්‍ර%@",consonantsUni[j],vowelModifiersUni[i]];
            
            text = [text stringByReplacingOccurrencesOfString:s withString:v];
        }
        
        s = [NSString stringWithFormat:@"%@r",consonants[j]];
        v = [NSString stringWithFormat:@"%@්‍ර",consonantsUni[j]];
        
        text = [text stringByReplacingOccurrencesOfString:s withString:v];
    }
    
       //consonents + vowel modifiers
    
    for (int i=0;i<[consonants count];i++){
        for (int j=0;j<nVowels;j++){
            s = [NSString stringWithFormat:@"%@%@",consonants[i],vowels[j]];
            v = [NSString stringWithFormat:@"%@%@",consonantsUni[i],vowelModifiersUni[j]];;
    
            text = [text stringByReplacingOccurrencesOfString:s withString:v];
        }
    }
    
    //consonents + HAL
    for (int i=0; i<[consonants count]; i++){
       // r = new RegExp(consonants[i], "g");
       // text = text.replace(r, consonantsUni[i]+"්");
        text = [text stringByReplacingOccurrencesOfString:consonants[i] withString:[NSString stringWithFormat:@"%@්",consonantsUni[i]]];
    }
    
    //vowels
    for (int i=0; i<[vowels count]; i++){
       // r = new RegExp(vowels[i], "g");
       // text = text.replace(r, vowelsUni[i]);
        
        text = [text stringByReplacingOccurrencesOfString:vowels[i] withString:vowelsUni[i]];
    }
    
    NSLog(@"%@",text);
 
}
//#pragma mark UITextViewDelegate
//
- (void)textViewDidBeginEditing:(UITextView *)textView {
    //handle user taps text view to type text
    
    
}

- (void)textViewDidEndEditing:(UITextView *)textView {
    //handle text editing finished
   
    
}

-(void)textViewDidChange:(UITextView *)textView{
 
        self.outputTextView.text = text;
        [self startText];

    
//    
//    CGFloat fixedWidth = self.outputTextView.frame.size.width;
//    CGSize newSize = [_outputTextView sizeThatFits:CGSizeMake(fixedWidth, MAXFLOAT)];
//    CGRect newFrame = _outputTextView.frame;
//    newFrame.size = CGSizeMake(fmaxf(newSize.width, fixedWidth), newSize.height);
//    _outputTextView.frame = newFrame;
    
    
    
}



@end
