//
//  AliAppDelegate.m
//  ali_iot_plugin
//
//  Created by Cat-x on 1/8/21.
//

#import "ALiAppDelegate.h"


#import <IMSIotSmart/IMSIotSmart.h>
#import <IMSIotSmart/IMSIotSmart+options.h>
#import <IMSIotSmart/IMSIotSmart+scope.h>

#import <IMSLog/IMSLog.h>


#if __has_include(<IMSOpenAccountCustom/IMSOpenAccountCustom.h>)
#import <IMSOpenAccountCustom/IMSOpenAccountCustom.h>
#endif

#if __has_include(<IMSDebug/IMSDebug.h>)
#import <IMSDebug/IMSDebug.h>
#endif


@implementation ALiAppDelegate

+ (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    IMSIotSmartConfig *config = [IMSIotSmartConfig new];
    config.regionType = REGION_CHINA_ONLY;
    [IMSIotSmart sharedInstance].config=config;
    [[IMSIotSmart sharedInstance] setAuthCode:@"china_production"];

    [[IMSIotSmart sharedInstance] application:application didFinishLaunchingWithOptions:launchOptions];
    [[IMSIotSmart sharedInstance] configProductScope:PRODUCT_SCOPE_ALL];


    return YES;
}


- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    //如果App没有集成移动应用推送能力，此处无需要调用
    [[IMSIotSmart sharedInstance] application:application didReceiveRemoteNotification:userInfo];
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    //如果App没有集成移动应用推送能力，此处无需要调用
    [[IMSIotSmart sharedInstance] application:application didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
}

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
    //如果App没有集成移动应用推送能力，此处无需要调用
    [[IMSIotSmart sharedInstance] application:application didFailToRegisterForRemoteNotificationsWithError:error];
}


@end
