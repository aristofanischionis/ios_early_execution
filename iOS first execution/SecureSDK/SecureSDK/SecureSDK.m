//
//  SecureSDK.m
//  SecureSDK
//
//  Created by Aristofanis Chionis Koufakos on 18/5/25.
//

#import "SecureSDK.h"
#import "SecureSDK.h"
#import <stdio.h>

@implementation SecureSDK
__attribute__((constructor))
static void SecureSDK_EntryPoint(void) {
    printf("🛡️ [SecureSDK] I ran BEFORE the app code!\n");
}
@end
