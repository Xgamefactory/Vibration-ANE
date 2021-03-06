/* Copyright 2018 Tua Rua Ltd.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "FreMacros.h"
#import "VibrationANE_oc.h"
#import <VibrationANE_FW/VibrationANE_FW.h>

#define FRE_OBJC_BRIDGE TRVIB_FlashRuntimeExtensionsBridge // use unique prefix throughout to prevent clashes with other ANEs
@interface FRE_OBJC_BRIDGE : NSObject<FreSwiftBridgeProtocol>
@end
@implementation FRE_OBJC_BRIDGE {
}
FRE_OBJC_BRIDGE_FUNCS
@end

@implementation VibrationANE_LIB
SWIFT_DECL(TRVIB) // use unique prefix throughout to prevent clashes with other ANEs
CONTEXT_INIT(TRVIB) {
    SWIFT_INITS(TRVIB)
    
    /**************************************************************************/
    /******* MAKE SURE TO ADD FUNCTIONS HERE THE SAME AS SWIFT CONTROLLER *****/
    /**************************************************************************/
    
    static FRENamedFunction extensionFunctions[] =
    {
         MAP_FUNCTION(TRVIB, init)
        ,MAP_FUNCTION(TRVIB, vibrate)
        ,MAP_FUNCTION(TRVIB, cancel)
        ,MAP_FUNCTION(TRVIB, hasVibrator)
    };
    
    /**************************************************************************/
    /**************************************************************************/
    
    SET_FUNCTIONS
    
}

CONTEXT_FIN(TRVIB) {
    [TRVIB_swft dispose];
    TRVIB_swft = nil;
    TRVIB_freBridge = nil;
    TRVIB_swftBridge = nil;
    TRVIB_funcArray = nil;
}
EXTENSION_INIT(TRVIB)
EXTENSION_FIN(TRVIB)
@end
