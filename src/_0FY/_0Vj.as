// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0FY._0Vj

package _0FY {
import _03u._0MI;

import _0tf._0yo;

import _20I._1GP;
import _20I._1Z;
import _20I._E0;

import _Vb.ErrorDialog;

import __Nj._M4;

import com.company.util._1sG;

import flash.events.TimerEvent;
import flash.utils.Timer;

import kabam.rotmg.assets.model._1ZZ;

public class _0Vj extends _0MI {

    public function _0Vj() {
        this.timer = new Timer(150);
        super();
    }
    [Inject]
    public var client:_0yo;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var classes:_1Z;
    public var accountId:String;
    public var charId:int;
    public var xml:XML;
    public var name:String;
    public var level:int;
    public var type:int;
    public var _PK:String;
    public var killer:String;
    public var _0UL:int;
    public var _164:_1ZZ;
    public var texture1:int;
    public var texture2:int;
    public var timer:Timer;
    private var _12p:Boolean = false;

    override protected function startTask():void {
        this.timer.addEventListener(TimerEvent.TIMER, this._18Q);
        this.timer.start();
    }

    private function _1ox():Object {
        var _local1:Object = {};
        _local1.accountId = this.accountId;
        _local1.charId = (((this.accountId == "")) ? -1 : this.charId);
        return (_local1);
    }

    private function onComplete(_arg1:Boolean, _arg2):void {
        if (_arg1) {
            this._0kd(_arg2);
        } else {
            this._0ab(_arg2);
        }
        ;
    }

    private function _0kd(_arg1:String):void {
        this.xml = new XML(_arg1);
        this._0qI();
        _Ug(true);
    }

    private function _0qI():void {
        var charXml:XML;
        var char:_E0;
        var skin:_1GP;
        charXml = this.xml.Char.(@id == charId)[0];
        this.name = charXml.Account.Name;
        this.level = charXml.Level;
        this.type = charXml.ObjectType;
        this._PK = this._0dT();
        this.killer = ((this.xml.KilledBy) || (""));
        this._0UL = this.xml.TotalFame;
        char = this.classes._Sb(charXml.ObjectType);
        skin = ((charXml.hasOwnProperty("Texture")) ? char._0fJ._1PW(charXml.Texture) : char._0fJ._1HK());
        this._164 = skin._164;
        this.texture1 = ((charXml.hasOwnProperty("Tex1")) ? charXml.Tex1 : 0);
        this.texture2 = ((charXml.hasOwnProperty("Tex2")) ? charXml.Tex2 : 0);
    }

    private function _0dT():String {
        var _local1:Number = (Number(this.xml.CreatedOn) * 1000);
        var _local2:Date = new Date(_local1);
        var _local3:_1sG = new _1sG();
        _local3._o1 = "MMMM D, YYYY";
        return (_local3._1w(_local2));
    }

    private function _0ab(_arg1:String):void {
        if (this._12p == false) {
            this._12p = true;
            this.timer = new Timer(600);
            this.timer.addEventListener(TimerEvent.TIMER, this._18Q);
            this.timer.start();
        } else {
            this._12p = false;
            this._nU.dispatch(new ErrorDialog(_arg1));
        }
        ;
    }

    private function _18Q(_arg1:TimerEvent):void {
        this.client._1Vb(8);
        this.client.complete.addOnce(this.onComplete);
        this.client.sendRequest("char/fame", this._1ox());
        this.timer.removeEventListener(TimerEvent.TIMER, this._18Q);
        this.timer.stop();
        this.timer = null;
    }


}
}//package _0FY

