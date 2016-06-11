// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._0Sp

package _0t {
import com.company.util.IntPoint;

import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;

public class _0Sp extends Sprite {

    public function _0Sp(_arg1:Vector.<IntPoint>, _arg2:String) {
        this.tiles_ = _arg1;
        this._1cm = new Shape();
        var _local3:Graphics = this._1cm.graphics;
        _local3.clear();
        _local3.beginFill(0, 0.8);
        _local3.drawRect(0, 0, 800, 600);
        _local3.endFill();
        addChild(this._1cm);
        this._08q = new _1eq(_arg2);
        this._08q.addEventListener(Event.COMPLETE, this.onComplete);
        this._08q.addEventListener(Event.CANCEL, this.onCancel);
        addChild(this._08q);
    }
    public var tiles_:Vector.<IntPoint>;
    private var _1cm:Shape;
    private var _08q:_1eq;

    public function _0vX():String {
        if (this._08q._0dR.text() == "") {
            return (null);
        }
        ;
        return (this._08q._0dR.text());
    }

    public function onComplete(_arg1:Event):void {
        dispatchEvent(new Event(Event.COMPLETE));
        parent.removeChild(this);
    }

    public function onCancel(_arg1:Event):void {
        parent.removeChild(this);
    }


}
}//package _0t-

