// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_058.Background

package _058 {
import com.company.assembleegameclient.map._18q;

import flash.display.Sprite;

public class Background extends Sprite {

    public static const _1iK:int = 0;
    public static const _nc:int = 1;
    public static const _Ed:int = 2;
    public static const _rN:int = 3;

    public static function _05z(_arg1:int):Background {
        switch (_arg1) {
            case _1iK:
                return (null);
            case _nc:
                return (new StarBackground());
            case _Ed:
                return (new NexusBackground());
        }
        ;
        return (null);
    }

    public function Background() {
        visible = false;
    }

    public function draw(_arg1:_18q, _arg2:int):void {
    }


}
}//package _058

