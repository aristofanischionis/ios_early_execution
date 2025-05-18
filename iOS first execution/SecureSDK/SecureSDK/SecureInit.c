//
//  SecureInit.c
//  SecureSDK
//
//  Created by Aristofanis Chionis Koufakos on 18/5/25.
//

#include <stdio.h>

static void SecureSDK_Init(void) {
    printf("🛡️ [SecureSDK] I ran via __mod_init_func — as early as possible!\n");
}

// Place a pointer to SecureSDK_Init into the __mod_init_func section
__attribute__((used, section("__DATA,__mod_init_func")))
static void (*early_init_ptr)(void) = SecureSDK_Init;
