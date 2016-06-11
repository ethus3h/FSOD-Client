// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.screens.charrects.CharacterRectList

package com.company.assembleegameclient.screens.charrects {
import _0CT._8w;

import _0cA._0bz;

import _10a._FU;

import _1Sm._sy;

import _20I._1GP;
import _20I._1Z;
import _20I._E0;

import com.company.assembleegameclient.appengine.SavedCharacter;
import com.company.assembleegameclient.appengine._1Ha;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.MouseEvent;

import kabam.rotmg.assets.services._1Ns;

public class CharacterRectList extends Sprite {

    public function CharacterRectList() {
        var _local5:SavedCharacter;
        var _local6:BuyCharacterRect;
        var _local7:_E0;
        var _local8:_1Ha;
        var _local9:CurrentCharacterRect;
        var _local10:int;
        var _local11:CreateNewCharacterRect;
        super();
        var _local1:_0bz = _8w._1Sz();
        this.classes = _local1.getInstance(_1Z);
        this.model = _local1.getInstance(_FU);
        this.assetFactory = _local1.getInstance(_1Ns);
        this.newCharacter = new _sy();
        this.buyCharacterSlot = new _sy();
        var _local2:String = this.model.getName();
        var _local3:int = 4;
        var _local4:Vector.<SavedCharacter> = this.model._ct();
        for each (_local5 in _local4) {
            _local7 = this.classes._Sb(_local5.objectType());
            _local8 = this.model._0CQ()[_local5.objectType()];
            _local9 = new CurrentCharacterRect(_local2, _local7, _local5, _local8);
            _local9.setIcon(this.getIcon(_local5));
            _local9.y = _local3;
            addChild(_local9);
            _local3 = (_local3 + (CharacterRect.HEIGHT + 4));
        }
        ;
        if (this.model.hasAvailableCharSlot()) {
            _local10 = 0;
            while (_local10 < this.model._62()) {
                _local11 = new CreateNewCharacterRect(this.model);
                _local11.addEventListener(MouseEvent.MOUSE_DOWN, this.onNewChar);
                _local11.y = _local3;
                addChild(_local11);
                _local3 = (_local3 + (CharacterRect.HEIGHT + 4));
                _local10++;
            }
            ;
        }
        ;
        _local6 = new BuyCharacterRect(this.model);
        _local6.addEventListener(MouseEvent.MOUSE_DOWN, this.onBuyCharSlot);
        _local6.y = _local3;
        addChild(_local6);
    }
    public var newCharacter:_sy;
    public var buyCharacterSlot:_sy;
    private var classes:_1Z;
    private var model:_FU;
    private var assetFactory:_1Ns;

    private function getIcon(_arg1:SavedCharacter):DisplayObject {
        var _local2:_E0 = this.classes._Sb(_arg1.objectType());
        var _local3:_1GP = ((_local2._0fJ._1PW(_arg1.skinType())) || (_local2._0fJ._1HK()));
        var _local4:BitmapData = this.assetFactory.makeIcon(_local3._164, 100, _arg1.tex1(), _arg1.tex2());
        return (new Bitmap(_local4));
    }

    private function onNewChar(_arg1:Event):void {
        this.newCharacter.dispatch();
    }

    private function onBuyCharSlot(_arg1:Event):void {
        this.buyCharacterSlot.dispatch(this.model._2y());
    }


}
}//package com.company.assembleegameclient.screens.charrects

