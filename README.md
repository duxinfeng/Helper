# Helper
工具类，包含一些常用的方法


### app 沙盒路径
	+ (NSString *)documentsPath;

### 跳转到App设置页面
	+ (void)openAppSettings;

### 获取app当前版本
    + (NSString *)appCurrentVersion;

### 跳转到AppStore评论
	+ (void)gotoAppStoreComment;

### 时间转换
	+ (NSString *)dateStringToTextString:(NSString *)datestring;			

### 获取文本宽度
	+ (CGFloat)getTextWidthWithText:(NSString *)text font:(UIFont *)font;		

### 获取文本高度
	+ (CGFloat)getTextHeightWithText:(NSString *)text font:(UIFont *)font width:(CGFloat)width;

