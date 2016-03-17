//
//  GoodPicker.m
//  ImgaePicker_Block
//
//  Created by SZT on 16/3/17.
//  Copyright © 2016年 SZT. All rights reserved.
//

#import "GoodPicker.h"

@interface GoodPicker ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate>


@end

@implementation GoodPicker

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


+ (GoodPicker *)imagePickerDidFinishPickImage:(finishBlock)finishBlock didCancelPickImage:(cancelBlock)cancelBlock
{
    GoodPicker *mypicker = [[GoodPicker alloc]init];
    mypicker.delegate = mypicker;
    mypicker.finish = finishBlock;
    mypicker.cancel = cancelBlock;
    return mypicker;
}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    self.finish(info,image);
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    self.cancel(picker);
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
