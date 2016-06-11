// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TG._1Y-

package _1TG {
import com.company.assembleegameclient.parameters.Parameters;
import com.company.googleanalytics.GA;

import flash.media.SoundTransform;

public class _1Y {

    private static var _bm:SoundTransform;


    public static function load():void {
        _bm = new SoundTransform(((Parameters.data_.playSFX) ? 1 : 0));
    }

    public static function _dI(_arg1:Boolean):void {
        GA.global().trackEvent("sound", ((_arg1) ? "soundOn" : "soundOff"));
        Parameters.data_.playSFX = _arg1;
        Parameters.save();
        _0Yn._1eT();
    }


}
}//package _1TG

