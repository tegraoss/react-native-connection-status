#import "RNConnectionStatus.h"

@implementation RNConnectionStatus

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(hasInternetConnection:(RCTResponseSenderBlock)callback) {

    NSURL *scriptUrl = [NSURL URLWithString:@"https://www.google.com/m"];
    NSData *data = [NSData dataWithContentsOfURL:scriptUrl];
    NSString *result;

    if (data)
        result = @"true";
    else
        result = @"false";

    callback(@[result]);
}

@end
