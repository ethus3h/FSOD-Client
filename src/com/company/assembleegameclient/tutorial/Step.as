// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.tutorial.Step

package com.company.assembleegameclient.tutorial {

public class Step {

    public function Step(_arg1:XML) {
        var _local2:XML;
        var _local3:XML;
        var _local4:XML;
        this._2O = new Vector.<UIDrawBox>();
        this._20p = new Vector.<UIDrawArrow>();
        this._0a = new Vector.<Requirement>();
        super();
        for each (_local2 in _arg1.UIDrawBox) {
            this._2O.push(new UIDrawBox(_local2));
        }
        ;
        for each (_local3 in _arg1.UIDrawArrow) {
            this._20p.push(new UIDrawArrow(_local3));
        }
        ;
        for each (_local4 in _arg1.Requirement) {
            this._0a.push(new Requirement(_local4));
        }
        ;
    }
    public var text_:String;
    public var action_:String;
    public var _2O:Vector.<UIDrawBox>;
    public var _20p:Vector.<UIDrawArrow>;
    public var _0a:Vector.<Requirement>;
    public var _On:int = 0;

    public function toString():String {
        return ((("[" + this.text_) + "]"));
    }


}
}//package com.company.assembleegameclient.tutorial

