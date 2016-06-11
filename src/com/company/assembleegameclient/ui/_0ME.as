// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._0ME

package com.company.assembleegameclient.ui {
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.util.AssetLibrary;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;

public class _0ME extends Sprite {

    public static const _0v0:String = "lofiInterfaceBig";
    public static const _WV:int = 22;

    public function _0ME(_arg1:Player) {
        var _local4:Bitmap;
        super();
        this.player = _arg1;
        var _local2:BitmapData = AssetLibrary._Rb(_0v0, _WV);
        var _local3:BitmapData = TextureRedrawer.redraw(_local2, 20, true, 0);
        _local4 = new Bitmap(_local3);
        _local4.x = -7;
        _local4.y = -10;
        addChild(_local4);
        addEventListener(MouseEvent.MOUSE_OVER, this._3t);
        addEventListener(MouseEvent.MOUSE_OUT, this._1tH);
    }
    private var _dO:BoostPanel;
    private var player:Player;

    private function _2H():void {
        this._dO.x = -(this._dO.width);
        this._dO.y = -(this._dO.height);
    }

    private function _3t(_arg1:Event):void {
        addChild((this._dO = new BoostPanel(this.player)));
        this._dO._1Zk.add(this._2H);
        this._2H();
    }

    private function _1tH(_arg1:Event):void {
        if (this._dO) {
            removeChild(this._dO);
        }
        ;
    }


}
}//package com.company.assembleegameclient.ui

