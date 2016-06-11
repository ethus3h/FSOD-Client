// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.objects._0sh

package com.company.assembleegameclient.objects {
import _0CT._8w;

import _4p._1ae;

import _GI._0oF;

import com.company.assembleegameclient.appengine.RemoteTexture;
import com.company.assembleegameclient.util.EmbeddedAssetsLoader;
import com.company.assembleegameclient.util._0T2;
import com.company.assembleegameclient.util._0pu;
import com.company.assembleegameclient.util._0zq;
import com.company.util.AssetLibrary;

import flash.display.BitmapData;
import flash.utils.Dictionary;

public class _0sh extends _1kQ {

    public static var _hB:Boolean = false;

    public function _0sh(_arg1:XML) {
        var _local2:XML;
        super();
        this._8l = this._0U7();
        if (_arg1.hasOwnProperty("Texture")) {
            this.parse(XML(_arg1.Texture));
        } else {
            if (_arg1.hasOwnProperty("AnimatedTexture")) {
                this.parse(XML(_arg1.AnimatedTexture));
            } else {
                if (_arg1.hasOwnProperty("RemoteTexture")) {
                    this.parse(XML(_arg1.RemoteTexture));
                } else {
                    if (_arg1.hasOwnProperty("RandomTexture")) {
                        this.parse(XML(_arg1.RandomTexture));
                    } else {
                        this.parse(_arg1);
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        for each (_local2 in _arg1.AltTexture) {
            this.parse(_local2);
        }
        ;
        if (_arg1.hasOwnProperty("Mask")) {
            this.parse(XML(_arg1.Mask));
        }
        ;
        if (_arg1.hasOwnProperty("Effect")) {
            this.parse(XML(_arg1.Effect));
        }
        ;
    }
    private var _8l:Boolean;

    override public function getTexture(_arg1:int = 0):BitmapData {
        if (_1Lu == null) {
            return (texture_);
        }
        ;
        var _local2:_1kQ = _1Lu[(_arg1 % _1Lu.length)];
        return (_local2.getTexture(_arg1));
    }

    override public function getAltTextureData(_arg1:int):_1kQ {
        if (_05q == null) {
            return (null);
        }
        ;
        return (_05q[_arg1]);
    }

    private function _0U7():Boolean {
        var _local1:_1ae = _8w._1Sz().getInstance(_1ae);
        return (_local1._0j8());
    }

    private function parse(_arg1:XML):void {
        var _local2:_0T2;
        var _local3:RemoteTexture;
        var _local4:XML;
        switch (_arg1.name().toString()) {
            case "Texture":
                texture_ = AssetLibrary._Rb(String(_arg1.File), int(_arg1.Index));
                return;
            case "Mask":
                mask_ = AssetLibrary._Rb(String(_arg1.File), int(_arg1.Index));
                return;
            case "Effect":
                _V1 = new _0oF(_arg1);
                return;
            case "AnimatedTexture":
                _0TX = _0pu._1Iw(String(_arg1.File), int(_arg1.Index));
                _local2 = _0TX.imageFromAngle(0, _0zq._c0, 0);
                texture_ = _local2.image_;
                mask_ = _local2.mask_;
                return;
            case "RemoteTexture":
                texture_ = AssetLibrary._Rb("lofiObj3", 0xFF);
                if (this._8l) {
                    _local3 = new RemoteTexture(_arg1.Id, _arg1.Instance, this._0F);
                    _local3.run();
                    if (!EmbeddedAssetsLoader._U5) {
                        _hB = true;
                    }
                    ;
                }
                ;
                _13I = ((_arg1.hasOwnProperty("Right")) ? _0zq.RIGHT : _0zq.DOWN);
                return;
            case "RandomTexture":
                _1Lu = new Vector.<_1kQ>();
                for each (_local4 in _arg1.children()) {
                    _1Lu.push(new _0sh(_local4));
                }
                ;
                return;
            case "AltTexture":
                if (_05q == null) {
                    _05q = new Dictionary();
                }
                ;
                _05q[int(_arg1.@id)] = new _0sh(_arg1);
                return;
        }
        ;
    }

    private function _0F(_arg1:BitmapData):void {
        if (_arg1.width > 16) {
            _0pu.add("remoteTexture", _arg1, null, (_arg1.width / 7), _arg1.height, _arg1.width, _arg1.height, _13I);
            _0TX = _0pu._1Iw("remoteTexture", 0);
            texture_ = _0TX.imageFromAngle(0, _0zq._c0, 0).image_;
        } else {
            texture_ = _arg1;
        }
        ;
    }


}
}//package com.company.assembleegameclient.objects

