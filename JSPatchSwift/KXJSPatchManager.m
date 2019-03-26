//
//  KXJSPatchManager.m
//  JSPatchSwift
//
//  Created by kongxin on 2019/3/26.
//  Copyright © 2019 kongxin. All rights reserved.
//

#import "KXJSPatchManager.h"
#import "JSPatchPlatform/JSPatch.h"
#import "JSPatchPlatform/JPEngine.h"
/** JSPatch appKey */
static NSString *const kJSPatchKey = @"jsPatch官网申请的AppKey";
static NSString *const kJSPatchPublicKey = @"-----BEGIN PUBLIC KEY-----\n 生成的公钥 \n-----END PUBLIC KEY-----";


@implementation KXJSPatchManager

+ (void)jsPatchSetup:(id)option {
    [self setupJSPatch];
}

+ (void)setupJSPatch {
    
    /**
     注意事项:Swift里所有自定义的属性和方法前面要加 @objc dynamic 才可以拥有runtime属性,动态去修改
     并且一定是继承NSObject的类才支持修改,例如继承Array就不支持修改,补丁的版本号一定要和工程版本号同步
     */
    //    [JSPatch setupCallback:^(JPCallbackType type, NSDictionary *data, NSError *error) {
    //        NSLog(data,error); /// 1.7.5版本 bug  此方法打开后第一次加载补丁会崩溃
    //    }];
    //    [JSPatch startWithAppKey:kJSPatchKey];
    //    [JSPatch setupRSAPublicKey:kJSPatchPublicKey];
    //
#ifdef DEBUG
    //    [JSPatch setupDevelopment];
    
//    [JSPatch testScriptInBundle]; /// 测试本地js补丁方法 如果打开此方法-以上方法需要全部屏蔽
#endif
    [JSPatch sync];
}

/**
 定义用户属性 用于条件下发 下发补丁给指定用户
 例如:
 [JSPatch setupUserData:@{
 @"userId": @"100867",
 @"location": @"guangdong"
 }];
 */
+ (void)setupUserData:(id)option {
    [JSPatch setupUserData:option];
}


@end
