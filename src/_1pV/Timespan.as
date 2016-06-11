// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1pV.Timespan

package _1pV {
import _6u._TG;

public class Timespan {

    public static const _xG:Timespan = new Timespan(_TG._0Zs, "week");
    public static const _NU:Timespan = new Timespan(_TG._0t7, "month");
    public static const _lP:Timespan = new Timespan(_TG._ID, "all");
    public static const _QL:Vector.<Timespan> = new <Timespan>[_xG, _NU, _lP];

    public function Timespan(_arg1:String, _arg2:String) {
        this.name = _arg1;
        this.id = _arg2;
    }
    private var name:String;
    private var id:String;

    public function getName():String {
        return (this.name);
    }

    public function _yr():String {
        return (this.id);
    }


}
}//package _1pV

