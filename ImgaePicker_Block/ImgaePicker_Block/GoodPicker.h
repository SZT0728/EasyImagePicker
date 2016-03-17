//
//  GoodPicker.h
//  ImgaePicker_Block
//
//  Created by SZT on 16/3/17.
//  Copyright © 2016年 SZT. All rights reserved.
//

#import <UIKit/UIKit.h>


//照片选择完成
typedef void(^finishBlock)(NSDictionary *dict,UIImage *image);

typedef void(^cancelBlock)(UIImagePickerController *picker);

@interface GoodPicker : UIImagePickerController


@property(nonatomic,copy)finishBlock finish;

@property(nonatomic,copy)cancelBlock cancel;



+ (GoodPicker *)imagePickerDidFinishPickImage:(finishBlock)finishBlock didCancelPickImage:(cancelBlock)cancelBlock;



@end
