// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TG._0Yn

package _1TG {
import _0CT._8w;

import _4p._1ae;

import com.company.assembleegameclient.parameters.Parameters;

import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.media.Sound;
import flash.media.SoundChannel;
import flash.media.SoundTransform;
import flash.net.URLRequest;
import flash.utils.Dictionary;

public class _0Yn {

    private static const _KD:String = "{URLBASE}/sfx/{NAME}.mp3";
    public static var _nq:Dictionary = new Dictionary();
    private static var _0pL:String;
    private static var _cD:Dictionary = new Dictionary(true);


    public static function load(_arg1:String):Sound {
        return ((_nq[_arg1] = ((_nq[_arg1]) || (_1sY(_arg1)))));
    }

    public static function _1sY(_arg1:String):Sound {
        var _local2:Sound = new Sound();
        _local2.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
        _local2.load(_ol(_arg1));
        return (_local2);
    }

    public static function play(_arg1:String, _arg2:Number = 1, _arg3:Boolean = true):void {
        var actualVolume:Number;
        var trans:SoundTransform;
        var channel:SoundChannel;
        var name:String = _arg1;
        var volume:Number = _arg2;
        var isFX:Boolean = _arg3;
        var sound:Sound = load(name);
        try {
            actualVolume = ((((((Parameters.data_.playSFX) && (isFX))) || (((!(isFX)) && (Parameters.data_.playPewPew))))) ? volume : 0);
            trans = new SoundTransform(actualVolume);
            channel = sound.play(0, 0, trans);
            channel.addEventListener(Event.SOUND_COMPLETE, _vs, false, 0, true);
            _cD[channel] = volume;
        } catch (error:Error) {
        }
        ;
    }

    public static function _1eT():void {
        var _local1:SoundChannel;
        var _local2:SoundTransform;
        for each (_local1 in _cD) {
            _local2 = _local1.soundTransform;
            _local2.volume = ((Parameters.data_.playSFX) ? _cD[_local1] : 0);
            _local1.soundTransform = _local2;
        }
        ;
    }

    private static function _ws():String {
        var setup:_1ae;
        var base:String = "";
        try {
            setup = _8w._1Sz().getInstance(_1ae);
            base = setup._kx(true);
        } catch (error:Error) {
            base = "localhost";
        }
        ;
        return (base);
    }

    private static function _ol(_arg1:String):URLRequest {
        _0pL = ((_0pL) || (_ws()));
        var _local2:String = _KD.replace("{URLBASE}", _0pL).replace("{NAME}", _arg1);
        return (new URLRequest(_local2));
    }

    public static function onIOError(_arg1:IOErrorEvent):void {
    }

    private static function _vs(_arg1:Event):void {
        var _local2:SoundChannel = (_arg1.target as SoundChannel);
        delete _cD[_local2];
    }


}
}//package _1TG

