#import "CircularIndicatorPlugin.h"
#if __has_include(<circular_indicator/circular_indicator-Swift.h>)
#import <circular_indicator/circular_indicator-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "circular_indicator-Swift.h"
#endif

@implementation CircularIndicatorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCircularIndicatorPlugin registerWithRegistrar:registrar];
}
@end
