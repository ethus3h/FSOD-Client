// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.map._Ip

package com.company.assembleegameclient.map {
public class _Ip {

    public static const _1sf:int = 0;
    public static const _4r:int = 1;
    public static const _1Dr:int = 2;

    public var type_:int = 0;
    public var dx_:Number = 0;
    public var dy_:Number = 0;


    public function _0qI(_arg1:XML):void {
        switch (String(_arg1)) {
            case "Wave":
                this.type_ = _4r;
                break;
            case "Flow":
                this.type_ = _1Dr;
                break;
        }
        ;
        this.dx_ = _arg1.@dx;
        this.dy_ = _arg1.@dy;
    }


}
}//package com.company.assembleegameclient.map

