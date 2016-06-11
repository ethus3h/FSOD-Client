// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1EG._1KZ

package _1EG {
import __Nj._0ay;

import _r7._17v;

import com.company.assembleegameclient.objects.ObjectLibrary;

import flash.display.BitmapData;
import flash.events.Event;

public class _1KZ extends _17v {

    [Inject]
    public var view:_GX;
    [Inject]
    public var closeDialogs:_0ay;


    override public function initialize():void {
        this.view._0Bt(this._0OZ());
        this.view._0NB.add(this._0hj);
    }

    private function _0OZ():BitmapData {
        return (ObjectLibrary.getRedrawnTextureFromType(6546, 80, true));
    }

    private function _0hj(_arg1:Event):void {
        this.closeDialogs.dispatch();
    }


}
}//package _1EG

