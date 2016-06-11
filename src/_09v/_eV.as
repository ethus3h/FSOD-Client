// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_09v._eV

package _09v {
import _0MO._07F;

import _0am._Nc;
import _0am._fs;
import _0am._w7;

import _0cy._0Ij;

import _1Fr._gT;
import _1Fr._qf;

import _1d9._pF;

import _8v._1W3;

import _Gf._GC;

import _UB.*;

import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.Player;

import flash.utils.Dictionary;

public class _eV implements _0E {

    [Inject]
    public var view:_0xs;
    [Inject]
    public var model:_qf;
    [Inject]
    public var setFocus:_GC;
    [Inject]
    public var _0eF:_w7;
    [Inject]
    public var _1Cj:_Nc;
    [Inject]
    public var _0n7:_fs;
    [Inject]
    public var _1VF:_07F;
    [Inject]
    public var _v0:_pF;
    [Inject]
    public var _p7:_0Ij;


    public function initialize():void {
        this.view.setMap(this.model._1P.map);
        this.setFocus.add(this._1ql);
        this._1VF.add(this._09V);
        this._1Cj.add(this._gg);
        this._0eF.add(this._pQ);
        this._0n7.add(this._M8);
        this._v0.add(this._yc);
        this.view._uv = this._p7.top;
    }

    public function destroy():void {
        this.setFocus.remove(this._1ql);
        this._1VF.remove(this._09V);
        this._1Cj.remove(this._gg);
        this._0eF.remove(this._pQ);
        this._0n7.remove(this._M8);
        this._v0.remove(this._yc);
    }

    private function _yc():void {
        this.view.deactivate();
    }

    private function _1ql(_arg1:String):void {
        var _local2:GameObject = this._4i(_arg1);
        this.view.setFocus(_local2);
    }

    private function _4i(_arg1:String):GameObject {
        var _local3:GameObject;
        if (_arg1 == "") {
            return (this.view.map.player_);
        }
        ;
        var _local2:Dictionary = this.view.map.goDict_;
        for each (_local3 in _local2) {
            if (_local3.name_ == _arg1) {
                return (_local3);
            }
            ;
        }
        ;
        return (this.view.map.player_);
    }

    private function _pQ(_arg1:_1W3):void {
        this.view.setGroundTile(_arg1._11t, _arg1._190, _arg1._1MY);
    }

    private function _gg(_arg1:_gT):void {
        this.view.setGameObjectTile(_arg1._11t, _arg1._190, _arg1._1i2);
    }

    private function _M8(_arg1:String):void {
        if (_arg1 == _fs.IN) {
            this.view.zoomIn();
        } else {
            if (_arg1 == _fs.OUT) {
                this.view.zoomOut();
            }
            ;
        }
        ;
    }

    private function _09V(_arg1:Player):void {
        this.view.draw();
    }


}
}//package _09v

