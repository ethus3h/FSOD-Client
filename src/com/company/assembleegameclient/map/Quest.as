// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map.Quest

package com.company.assembleegameclient.map {
import com.company.assembleegameclient.objects.GameObject;

import flash.utils.getTimer;

public class Quest {

    public function Quest(_arg1:Map) {
        this.map_ = _arg1;
    }
    public var map_:Map;
    public var objectId_:int = -1;
    private var _0SF:int = 0;
    private var _0tM:int = 0;

    public function setObject(_arg1:int):void {
        if ((((this.objectId_ == -1)) && (!((_arg1 == -1))))) {
            this._0SF = (getTimer() + 4000);
            this._0tM = (this._0SF + 2000);
        }
        ;
        this.objectId_ = _arg1;
    }

    public function completed():void {
        this._0SF = ((getTimer() + 15000) - (Math.random() * 10000));
        this._0tM = (this._0SF + 2000);
    }

    public function getObject(_arg1:int):GameObject {
        if (_arg1 < this._0SF) {
            return (null);
        }
        ;
        return (this.map_.goDict_[this.objectId_]);
    }

    public function isNew(_arg1:int):Boolean {
        return ((_arg1 < this._0tM));
    }


}
}//package com.company.assembleegameclient.map

