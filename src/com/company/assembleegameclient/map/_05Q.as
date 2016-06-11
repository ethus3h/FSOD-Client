// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map._05Q

package com.company.assembleegameclient.map {
import com.company.assembleegameclient.objects._0sh;
import com.company.assembleegameclient.objects._1kQ;
import com.company.util.BitmapUtil;

import flash.display.BitmapData;

public class _05Q {

    public function _05Q(_arg1:XML) {
        this.animate_ = new _Ip();
        super();
        this.type_ = int(_arg1.@type);
        this.id_ = String(_arg1.@id);
        this._dc = _arg1.hasOwnProperty("NoWalk");
        if (_arg1.hasOwnProperty("MinDamage")) {
            this.minDamage_ = int(_arg1.MinDamage);
        }
        ;
        if (_arg1.hasOwnProperty("MaxDamage")) {
            this.maxDamage_ = int(_arg1.MaxDamage);
        }
        ;
        this.push_ = _arg1.hasOwnProperty("Push");
        if (_arg1.hasOwnProperty("Animate")) {
            this.animate_._0qI(XML(_arg1.Animate));
        }
        ;
        if (_arg1.hasOwnProperty("BlendPriority")) {
            this._kt = int(_arg1.BlendPriority);
        }
        ;
        if (_arg1.hasOwnProperty("CompositePriority")) {
            this._1NT = int(_arg1.CompositePriority);
        }
        ;
        if (_arg1.hasOwnProperty("Speed")) {
            this.speed_ = Number(_arg1.Speed);
        }
        ;
        if (_arg1.hasOwnProperty("SlideAmount")) {
            this.slideAmount_ = Number(_arg1.SlideAmount);
        }
        ;
        this._Nl = ((_arg1.hasOwnProperty("XOffset")) ? Number(_arg1.XOffset) : 0);
        this._20G = ((_arg1.hasOwnProperty("YOffset")) ? Number(_arg1.YOffset) : 0);
        this.push_ = _arg1.hasOwnProperty("Push");
        this.sink_ = _arg1.hasOwnProperty("Sink");
        this._14m = _arg1.hasOwnProperty("Sinking");
        this._1o3 = _arg1.hasOwnProperty("RandomOffset");
        if (_arg1.hasOwnProperty("Edge")) {
            this._0Ed = true;
            this._zv = new _0sh(XML(_arg1.Edge));
            if (_arg1.hasOwnProperty("Corner")) {
                this._1nx = new _0sh(XML(_arg1.Corner));
            }
            ;
            if (_arg1.hasOwnProperty("InnerCorner")) {
                this._0oc = new _0sh(XML(_arg1.InnerCorner));
            }
            ;
        }
        ;
        this._1hz = _arg1.hasOwnProperty("SameTypeEdgeMode");
        if (_arg1.hasOwnProperty("Top")) {
            this._08T = new _0sh(XML(_arg1.Top));
            this._1hJ = new _Ip();
            if (_arg1.hasOwnProperty("TopAnimate")) {
                this._1hJ._0qI(XML(_arg1.TopAnimate));
            }
            ;
        }
        ;
    }
    public var type_:int;
    public var id_:String;
    public var _dc:Boolean = true;
    public var minDamage_:int = 0;
    public var maxDamage_:int = 0;
    public var animate_:_Ip;
    public var _kt:int = -1;
    public var _1NT:int = 0;
    public var speed_:Number = 1;
    public var _Nl:Number = 0;
    public var _20G:Number = 0;
    public var slideAmount_:Number = 0;
    public var push_:Boolean = false;
    public var sink_:Boolean = false;
    public var _14m:Boolean = false;
    public var _1o3:Boolean = false;
    public var _0Ed:Boolean = false;
    public var _1hz:Boolean = false;
    public var _08T:_1kQ = null;
    public var _1hJ:_Ip = null;
    private var _zv:_1kQ = null;
    private var _1nx:_1kQ = null;
    private var _0oc:_1kQ = null;
    private var _0LV:Vector.<BitmapData> = null;
    private var _1Jl:Vector.<BitmapData> = null;

    public function _wV():Vector.<BitmapData> {
        if (((!(this._0Ed)) || (!((this._0LV == null))))) {
            return (this._0LV);
        }
        ;
        this._0LV = new Vector.<BitmapData>(9);
        this._0LV[3] = this._zv.getTexture(0);
        this._0LV[1] = BitmapUtil._4G(this._0LV[3], 1);
        this._0LV[5] = BitmapUtil._4G(this._0LV[3], 2);
        this._0LV[7] = BitmapUtil._4G(this._0LV[3], 3);
        if (this._1nx != null) {
            this._0LV[0] = this._1nx.getTexture(0);
            this._0LV[2] = BitmapUtil._4G(this._0LV[0], 1);
            this._0LV[8] = BitmapUtil._4G(this._0LV[0], 2);
            this._0LV[6] = BitmapUtil._4G(this._0LV[0], 3);
        }
        ;
        return (this._0LV);
    }

    public function _1l8():Vector.<BitmapData> {
        if ((((this._0oc == null)) || (!((this._1Jl == null))))) {
            return (this._1Jl);
        }
        ;
        this._1Jl = this._0LV.concat();
        this._1Jl[0] = this._0oc.getTexture(0);
        this._1Jl[2] = BitmapUtil._4G(this._1Jl[0], 1);
        this._1Jl[8] = BitmapUtil._4G(this._1Jl[0], 2);
        this._1Jl[6] = BitmapUtil._4G(this._1Jl[0], 3);
        return (this._1Jl);
    }


}
}//package com.company.assembleegameclient.map

