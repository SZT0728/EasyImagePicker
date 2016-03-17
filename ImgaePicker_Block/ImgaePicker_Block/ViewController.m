//
//  ViewController.m
//  ImgaePicker_Block
//
//  Created by SZT on 16/3/17.
//  Copyright © 2016年 SZT. All rights reserved.
//

#import "ViewController.h"
#import "GoodPicker.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (IBAction)btnAction:(UIButton *)sender {
    
    GoodPicker *picker = [GoodPicker imagePickerDidFinishPickImage:^(NSDictionary *dict, UIImage *image) {
        self.myImageView.image = image;
    } didCancelPickImage:^(UIImagePickerController *picker) {
        [picker dismissViewControllerAnimated:YES completion:nil];
    }];
    [self presentViewController:picker animated:YES completion:nil];
}

@end
