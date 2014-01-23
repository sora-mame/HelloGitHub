//
//  ViewController.h
//  HelloGitHub
//
//  Created by 高山　育健 on 13/11/14.
//  Copyright (c) 2013年 University of kitakyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

    BOOL startInput;
    int currentValue;
    int operation;
//IBOutlet UIButton *dot;
    IBOutlet UIButton *zero;
//IBOutlet UIButton *wzero;
    IBOutlet UIButton *one;
    IBOutlet UIButton *two;
    IBOutlet UIButton *three;
    IBOutlet UIButton *four;
    IBOutlet UIButton *five;
    IBOutlet UIButton *six;
    IBOutlet UIButton *seven;
    IBOutlet UIButton *eight;
    IBOutlet UIButton *nine;
    IBOutlet UIButton *equal;
    IBOutlet UIButton *add;
    IBOutlet UIButton *sub;
    IBOutlet UIButton *div;
    IBOutlet UIButton *mul;
    IBOutlet UIButton *plumi;
//IBOutlet UIButton *rem;
//IBOutlet UIButton *ans;
    IBOutlet UIButton *clear;
    IBOutlet UITextField *result;
}

- (IBAction)number_Push:(id)sender;
- (IBAction)clear_Push:(id)sender;
- (IBAction)equal_Push:(id)sender;
- (IBAction)op_Push:(id)sender;
- (IBAction)del_push:(id)sender;
- (IBAction)plumi_push:(id)sender;


@end
