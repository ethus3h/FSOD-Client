// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.ui._wA

package com.company.assembleegameclient.ui {
import _0Mr._0oo;

import _0y9._06T;

import _1Sm._sy;

import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.util.MoreColorUtil;

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.filters.DropShadowFilter;
import flash.geom.ColorTransform;

public class _wA extends Sprite {

    public function _wA(_arg1:uint, _arg2:Boolean, _arg3:GameObject, _arg4:Boolean = false) {
        this._17d = _arg4;
        this._1oR = _arg2;
        this.color = _arg1;
        this._0f8 = new Bitmap();
        this._0f8.x = -4;
        this._0f8.y = ((_arg4) ? -1 : -4);
        addChild(this._0f8);
        this.text = new _06T().setSize(13).setColor(_arg1).setHTML(_arg2);
        if (!_arg2) {
            this.text.setTextWidth(66).setTextHeight(20).setBold(true);
        }
        ;
        this.text.x = 32;
        this.text.y = 6;
        this.text.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this.text);
        this._jU = this.text.textChanged;
        this.draw(_arg3);
    }
    public var _0f8:Bitmap;
    public var _1oR:Boolean;
    public var go:GameObject;
    public var _jU:_sy;
    private var text:_06T;
    private var _0qt:_0oo;
    private var color:uint;
    private var _1Ap:String;
    private var type:int;
    private var level:int;
    private var _17d:Boolean;

    public function draw(_arg1:GameObject, _arg2:ColorTransform = null):void {
        var _local3:Boolean;
        _local3 = this._13f();
        this.go = _arg1;
        visible = !((_arg1 == null));
        if (((visible) && (((this._0Ve()) || (_local3))))) {
            this.redraw();
            transform.colorTransform = ((_arg2) || (MoreColorUtil.identity));
        }
        ;
    }

    public function clear():void {
        this.go = null;
        visible = false;
    }

    public function _13f():Boolean {
        return ((((this.go == null)) && ((visible == false))));
    }

    private function _0Ve():Boolean {
        var _local1:Boolean = ((((!((this.go.name_ == this._1Ap))) || (!((this.go._ew == this.level))))) || (!((this.go.objectType_ == this.type))));
        ((_local1) && (this._Os()));
        return (_local1);
    }

    private function _Os():void {
        this._1Ap = this.go.name_;
        this.level = this.go._ew;
        this.type = this.go.objectType_;
    }

    private function redraw():void {
        this._0f8.bitmapData = this.go.getPortrait();
        this.text.setStringBuilder(this._1VL());
        this.text.setColor(this._2U());
        this.text.update();
    }

    private function _1VL():_0oo {
        this._0qt = ((this._0qt) || (new _0oo()));
        if (this._1oR) {
            this._1Ue();
        } else {
            if (this._0YX()) {
                this._0qt._yo(this._1Ap);
            } else {
                this._0qt._yo(ObjectLibrary._1w3[this.type]);
            }
            ;
        }
        ;
        return (this._0qt);
    }

    private function _1Ue():void {
        var _local1:String;
        var _local2:Object = {};
        if (this._0YX()) {
            if (this._17d) {
                _local1 = "<b>{name}</b>\n({type}{level})";
            } else {
                _local1 = "<b>{name}</b> ({type}{level})";
            }
            ;
            if ((((this.go.name_.length > 8)) && (!(this._17d)))) {
                _local2.name = (this.go.name_.slice(0, 6) + "...");
            } else {
                _local2.name = this.go.name_;
            }
            ;
            _local2.type = ObjectLibrary._1w3[this.type];
            _local2.level = (((this.level < 1)) ? "" : (" " + this.level));
        } else {
            _local1 = "<b>{name}</b>";
            _local2.name = ObjectLibrary._1w3[this.type];
        }
        ;
        this._0qt._yo(_local1, _local2);
    }

    private function _0YX():Boolean {
        return (((!((this.go.name_ == null))) && (!((this.go.name_ == "")))));
    }

    private function _2U():int {
        var _local1:Player = (this.go as Player);
        if (_local1 == null) {
            return (this.color);
        }
        ;
        if (_local1._0Mq) {
            return (Parameters._B2);
        }
        ;
        if (_local1._0LC) {
            if (_local1.starred_) {
                return (4240365);
            }
            ;
            return (Parameters._0e4);
        }
        ;
        return (this.color);
    }


}
}//package com.company.assembleegameclient.ui

