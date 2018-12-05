#import "RNConnectionStatus.h"

@implementation RNConnectionStatus

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(hasInternetConnection:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject) {

    NSURL *scriptUrl = [NSURL URLWithString:@"https://www.google.com/m"];
    NSData *data = [NSData dataWithContentsOfURL:scriptUrl];

    if (data)
        resolve(@"true");
    else
        resolve(@"false");
}

@end
