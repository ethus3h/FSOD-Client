// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TG._0W6

package _1TG {
import _0CT._8w;

import _4p._1ae;

import com.company.assembleegameclient.parameters.Parameters;
import com.company.googleanalytics.GA;

import flash.media.Sound;
import flash.media.SoundChannel;
import flash.media.SoundTransform;
import flash.net.URLRequest;

public class _0W6 {

    private static var _1gN:Sound = null;
    private static var _0BE:SoundChannel = null;


    public static function load():void {
        var _local1:_1ae = _8w._1Sz().getInstance(_1ae);
        var _local2 = (_local1._kx(true) + "/music/sorc.mp3");
        _1gN = new Sound();
        _1gN.load(new URLRequest(_local2));
        _0BE = _1gN.play(0, int.MAX_VALUE, new SoundTransform(((Parameters.data_.playMusic) ? 0.3 : 0)));
    }

    public static function _16i(_arg1:Boolean):void {
        GA.global().trackEvent("sound", ((_arg1) ? "musicOn" : "musicOff"));
        Parameters.data_.playMusic = _arg1;
        Parameters.save();
        _0BE.soundTransform = new SoundTransform(((Parameters.data_.playMusic) ? 0.3 : 0));
    }


}
}//package _1TG

