// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util._0T2

package com.company.assembleegameclient.util {
import com.company.util.BitmapUtil;

import flash.display.BitmapData;

public class _0T2 {

    public function _0T2(_arg1:BitmapData, _arg2:BitmapData) {
        this.image_ = _arg1;
        this.mask_ = _arg2;
    }
    public var image_:BitmapData;
    public var mask_:BitmapData;

    public function width():int {
        return (this.image_.width);
    }

    public function height():int {
        return (this.image_.height);
    }

    public function mirror(_arg1:int = 0):_0T2 {
        var _local2:BitmapData = BitmapUtil.mirror(this.image_, _arg1);
        var _local3:BitmapData = (((this.mask_ == null)) ? null : BitmapUtil.mirror(this.mask_, _arg1));
        return (new _0T2(_local2, _local3));
    }

    public function _0Sa():Number {
        return (BitmapUtil._0Sa(this.image_));
    }


}
}//package com.company.assembleegameclient.util

