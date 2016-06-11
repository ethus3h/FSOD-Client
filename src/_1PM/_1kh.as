// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1PM._1kh

package _1PM {
import flash.events.Event;

public class _1kh extends Event {

    public static const ERROR:String = "error";
    public static const _1wr:String = "preInitialize";
    public static const _02r:String = "initialize";
    public static const _0zm:String = "postInitialize";
    public static const _1bw:String = "preSuspend";
    public static const _0EY:String = "suspend";
    public static const _11C:String = "postSuspend";
    public static const _0So:String = "preResume";
    public static const _Vi:String = "resume";
    public static const _1EL:String = "postResume";
    public static const _WG:String = "preDestroy";
    public static const _2T:String = "destroy";
    public static const _0qn:String = "postDestroy";

    public function _1kh(_arg1:String) {
        super(_arg1);
    }
    public var error:Error;

    override public function clone():Event {
        var _local1:_1kh = new _1kh(type);
        _local1.error = this.error;
        return (_local1);
    }


}
}//package _1PM

