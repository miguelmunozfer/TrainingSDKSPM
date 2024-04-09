#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(TrainingSDKBridge, NSObject)

RCT_EXTERN_METHOD(start:(NSString *)user clientId:(NSString *)clientId clientSecret:(NSString *)clientSecret resolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(startSession:(NSString *)clientId clientSecret:(NSString *)clientSecret)

RCT_EXTERN_METHOD(logout)

RCT_EXTERN_METHOD(showNutritionModule)

RCT_EXTERN_METHOD(setMainColor:(NSString *)color)

RCT_EXTERN_METHOD(setNavigationBarColor:(NSString *)color)

RCT_EXTERN_METHOD(setNavigationTintColor:(NSString *)color)

RCT_EXTERN_METHOD(showTrainingModule)

RCT_EXTERN_METHOD(setNavigationTitle:(NSString *)title)

RCT_EXTERN_METHOD(updateProfile:(NSString *)sex height:(nonnull NSNumber *)height weight:(nonnull NSNumber *)weight birthDateString:(NSString *)birthDateString resolver:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)

@end
