// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TZ._eB

package _1TZ {
import com.company.assembleegameclient.util.GUID;

import flash.net.SharedObject;

public class _eB {

    private var guid:String;


    public function _0Sv():String {
        return ((this.guid = ((this.guid) || (this._XJ()))));
    }

    private function _XJ():String {
        var _local1:String;
        var _local2:SharedObject;
        try {
            _local2 = SharedObject.getLocal("KongregateRotMG", "/");
            if (_local2.data.hasOwnProperty("GuestGUID")) {
                _local1 = _local2.data["GuestGUID"];
            }
            ;
        } catch (error:Error) {
        }
        ;
        if (_local1 == null) {
            _local1 = GUID.create();
            try {
                _local2 = SharedObject.getLocal("KongregateRotMG", "/");
                _local2.data["GuestGUID"] = _local1;
                _local2.flush();
            } catch (error:Error) {
            }
            ;
        }
        ;
        return (_local1);
    }


}
}//package _1TZ

