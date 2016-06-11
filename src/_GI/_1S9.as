// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._1S9

package _GI {
import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.objects.GameObject;

import flash.display.IGraphicsData;

public class _1S9 extends GameObject {

    public static function _1eg(_arg1:_0oF, _arg2:GameObject):_1S9 {
        switch (_arg1.id) {
            case "Healing":
                return (new _0bI(_arg2));
            case "Fountain":
                return (new FountainEffect(_arg2));
            case "Gas":
                return (new _AD(_arg2, _arg1));
            case "Vent":
                return (new VentEffect(_arg2));
            case "Bubbles":
                return (new _yW(_arg2, _arg1));
            case "XMLEffect":
                return (new XMLEffect(_arg2, _arg1));
            case "CustomParticles":
                return (_0Y1._1R(_arg1, _arg2));
        }
        ;
        return (null);
    }

    public function _1S9() {
        super(null);
        objectId_ = _1LK();
        _Ci = false;
    }

    override public function update(_arg1:int, _arg2:int):Boolean {
        return (false);
    }

    override public function draw(_arg1:Vector.<IGraphicsData>, _arg2:_18q, _arg3:int):void {
    }


}
}//package _GI

