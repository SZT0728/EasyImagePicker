# EasyImagePicker
一行代码搞定图片选择控制器UIImagepicker，抛开代理什么的都不用管

GoodPicker *picker = [GoodPicker imagePickerDidFinishPickImage:^(NSDictionary *dict, UIImage *image) {
        //图片选择成功后该block调用。参数说明：dict所选择的图片的信息，image选择到的图片
        self.myImageView.image = image;
    } didCancelPickImage:^(UIImagePickerController *picker) {
        //点击取消的时候该block调用
        [picker dismissViewControllerAnimated:YES completion:nil];
    }];
