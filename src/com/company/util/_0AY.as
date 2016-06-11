// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util._0AY

package com.company.util {
import flash.system.Capabilities;

public class _0AY {


    public static function _0Fo():String {
        return ((((((((((((((((((((((((((_1xL("avHardwareDisable") + _1xL("hasAccessibility")) + _1xL("hasAudio")) + _1xL("hasAudioEncoder")) + _1xL("hasEmbeddedVideo")) + _1xL("hasIME")) + _1xL("hasMP3")) + _1xL("hasPrinting")) + _1xL("hasScreenBroadcast")) + _1xL("hasScreenPlayback")) + _1xL("hasStreamingAudio")) + _1xL("hasStreamingVideo")) + _1xL("hasTLS")) + _1xL("hasVideoEncoder")) + _1xL("isDebugger")) + _1xL("language")) + _1xL("localFileReadDisable")) + _1xL("manufacturer")) + _1xL("os")) + _1xL("pixelAspectRatio")) + _1xL("playerType")) + _1xL("screenColor")) + _1xL("screenDPI")) + _1xL("screenResolutionX")) + _1xL("screenResolutionY")) + _1xL("version")));
    }

    private static function _1xL(_arg1:String):String {
        return ((((_arg1 + ": ") + Capabilities[_arg1]) + "\n"));
    }


}
}//package com.company.util

