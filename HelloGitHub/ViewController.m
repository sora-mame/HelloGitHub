//
//  ViewController.m
//  HelloGitHub
//
//  Created by 高山　育健 on 13/11/14.
//  Copyright (c) 2013年 University of kitakyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    startInput = YES;
    currentValue = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



int a,c,d;

- (IBAction)number_Push:(id)sender {
    UIButton *b = (UIButton *)sender;
    
    if( startInput ){
        if( b.tag == 0 ){
            if(i >= 1){
                l = 0;
                b.tag = 0;
                i = 0;
            }
            else{
                l = 1;
                return;
            }
        }
        // 新しく表示する文字列を作成
        
        result.text = [NSString stringWithFormat:@"%d", b.tag];
        startInput =  NO;
    }
    else {
        // すでに表示されている文字列に連結
        result.text = [NSString stringWithFormat:@"%@%d", result.text, b.tag];
        
    }
    add.hidden = NO;
    sub.hidden = NO;
    div.hidden = NO;
    mul.hidden = NO;
    equal.hidden = NO;
    plumi.hidden = NO;
}

- (IBAction)clear_Push:(id)sender {
    i = 0;
    result.text = @"0";
    startInput = YES;
    add.hidden = NO;
    sub.hidden = NO;
    div.hidden = NO;
    mul.hidden = NO;
    equal.hidden = NO;
    plumi.hidden = NO;
}

int i,j;
int l;

- (IBAction)equal_Push:(id)sender {
    // 直前に押された演算子で場合分け
    i = 0;
    if( operation == 1 ){
        currentValue += [result.text intValue];
        operation = 0;
    }
    else if( operation == 2 ){
        currentValue -= [result.text intValue];
        operation = 0;
    }
    else if( operation == 3 ){
        currentValue *= [result.text intValue];
        operation = 0;
    }
    else if( operation == 4 ){
        currentValue /= [result.text intValue];
        operation = 0;
    }
    
        // 表示の更新
    result.text = [NSString stringWithFormat:@"%d", currentValue];
    startInput = YES;
    add.hidden = NO;
    sub.hidden = NO;
    div.hidden = NO;
    mul.hidden = NO;
    equal.hidden = NO;
    plumi.hidden = NO;
}

- (IBAction)op_Push:(id)sender {
    
    i++;
    if( i >= 2){
        if( operation == 1 ){
            currentValue += [result.text intValue];
        } else if( operation == 2 ){
            currentValue -= [result.text intValue];
        }
        else if( operation == 3 ){
            currentValue *= [result.text intValue];
        }
        else if( operation == 4 ){
            currentValue /= [result.text intValue];
        }
    
        // 表示の更新
        result.text = [NSString stringWithFormat:@"%d", currentValue];
        startInput = YES;
    }
    UIButton *b = (UIButton *)sender;
    
    // 現在値の保存
    currentValue = [result.text intValue];
    
    // 演算の保存
    operation = b.tag;
    
    startInput = YES;
   
    add.hidden = YES;
    sub.hidden = YES;
    div.hidden = YES;
    mul.hidden = YES;
    equal.hidden = YES;
    
}

- (IBAction)plumi_push:(id)sender {
    currentValue = [result.text intValue];
    currentValue = -1*currentValue;
    result.text = [NSString stringWithFormat:@"%d", currentValue];
}
@end