//
//  NutritionSDKBridge.h
//  SDKNutritionExample
//
//  Created by Miguel Muñoz on 28/11/23.
//

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(NutritionSDKBridge, NSObject)

RCT_EXTERN_METHOD(start:(NSString *)user appID:(NSString *)appID password:(NSString *)password resolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(isProfileFilled:(RCTPromiseResolveBlock)resolve)

RCT_EXTERN_METHOD(setMemberId:(NSString *)memberId)

RCT_EXTERN_METHOD(setCountry:(Int)country)

RCT_EXTERN_METHOD(startSession:(NSString *)appID password:(NSString *)password)

RCT_EXTERN_METHOD(logout)

RCT_EXTERN_METHOD(showNutritionModule)

RCT_EXTERN_METHOD(setMainColor:(NSString *)color)

RCT_EXTERN_METHOD(setNavigationBarColor:(NSString *)color)

RCT_EXTERN_METHOD(setNavigationTintColor:(NSString *)color)

RCT_EXTERN_METHOD(showNutritionModule)

RCT_EXTERN_METHOD(getProfile:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(setNavigationTitle:(NSString *)title)

RCT_EXTERN_METHOD(setLanguage:(NSString *)language)

RCT_EXTERN_METHOD(updateProfile:(NSString *)sex height:(nonnull NSNumber *)height weight:(nonnull NSNumber *)weight birthDateString:(NSString *)birthDateString resolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)

@end
