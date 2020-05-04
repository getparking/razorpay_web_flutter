#import "RzpwpluginPlugin.h"
#if __has_include(<rzpwplugin/rzpwplugin-Swift.h>)
#import <rzpwplugin/rzpwplugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "rzpwplugin-Swift.h"
#endif

@implementation RzpwpluginPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRzpwpluginPlugin registerWithRegistrar:registrar];
}
@end
