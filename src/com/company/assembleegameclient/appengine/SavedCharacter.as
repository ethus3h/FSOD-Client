// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.appengine.SavedCharacter

package com.company.assembleegameclient.appengine {
import _0CT._8w;

import _1L3._1FO;
import _1L3._IG;

import _Jm._0R9;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.assembleegameclient.util._0T2;
import com.company.assembleegameclient.util._0pu;
import com.company.assembleegameclient.util._0zq;
import com.company.util._1V;

import flash.display.BitmapData;
import flash.geom.ColorTransform;

public class SavedCharacter {

    public static function getImage(_arg1:SavedCharacter, _arg2:XML, _arg3:int, _arg4:int, _arg5:Number, _arg6:Boolean, _arg7:Boolean):BitmapData {
        var _local8:_0zq = _0pu._1Iw(String(_arg2.AnimatedTexture.File), int(_arg2.AnimatedTexture.Index));
        var _local9:_0T2 = _local8.imageFromDir(_arg3, _arg4, _arg5);
        var _local10:int = (((_arg1) != null) ? _arg1.tex1() : null);
        var _local11:int = (((_arg1) != null) ? _arg1.tex2() : null);
        var _local12:BitmapData = TextureRedrawer.resize(_local9.image_, _local9.mask_, 100, false, _local10, _local11);
        _local12 = _0R9._ud(_local12, 0);
        if (!_arg6) {
            _local12 = _1V._EJ(_local12, new ColorTransform(0, 0, 0, 0.5, 0, 0, 0, 0));
        } else {
            if (!_arg7) {
                _local12 = _1V._EJ(_local12, new ColorTransform(0.75, 0.75, 0.75, 1, 0, 0, 0, 0));
            }
            ;
        }
        ;
        return (_local12);
    }

    public static function _VG(_arg1:SavedCharacter, _arg2:SavedCharacter):Number {
        var _local3:Number = ((Parameters.data_.charIdUseMap.hasOwnProperty(_arg1.charId())) ? Parameters.data_.charIdUseMap[_arg1.charId()] : 0);
        var _local4:Number = ((Parameters.data_.charIdUseMap.hasOwnProperty(_arg2.charId())) ? Parameters.data_.charIdUseMap[_arg2.charId()] : 0);
        if (_local3 != _local4) {
            return ((_local4 - _local3));
        }
        ;
        return ((_arg2._gk() - _arg1._gk()));
    }

    public function SavedCharacter(_arg1:XML, _arg2:String) {
        var _local3:XML;
        var _local4:int;
        var _local5:_1FO;
        super();
        this._0lT = _arg1;
        this.name_ = _arg2;
        if (this._0lT.hasOwnProperty("Pet")) {
            _local3 = new XML(this._0lT.Pet);
            _local4 = _local3.@instanceId;
            _local5 = _8w._1Sz().getInstance(_IG).getPetVO(_local4);
            _local5.apply(_local3);
            this._JO(_local5);
        }
        ;
    }
    public var _0lT:XML;
    public var name_:String = null;
    private var pet:_1FO;

    public function charId():int {
        return (int(this._0lT.@id));
    }

    public function name():String {
        return (this.name_);
    }

    public function objectType():int {
        return (int(this._0lT.ObjectType));
    }

    public function skinType():int {
        return (int(this._0lT.Texture));
    }

    public function level():int {
        return (int(this._0lT.Level));
    }

    public function tex1():int {
        return (int(this._0lT.Tex1));
    }

    public function tex2():int {
        return (int(this._0lT.Tex2));
    }

    public function _gk():int {
        return (int(this._0lT.Exp));
    }

    public function fame():int {
        return (int(this._0lT.CurrentFame));
    }

    public function _0Qh():String {
        return (ObjectLibrary._1w3[this.objectType()]);
    }

    public function getPetVO():_1FO {
        return (this.pet);
    }

    public function _JO(_arg1:_1FO):void {
        this.pet = _arg1;
    }


}
}//package com.company.assembleegameclient.appengine

