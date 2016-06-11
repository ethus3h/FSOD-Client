// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_db._8h

package _db {
import _1PM._1YQ;

import _SW._1RM;
import _SW._1z5;

import flash.display.LoaderInfo;

public class _8h implements _10I {

    [Inject]
    public var info:LoaderInfo;
    [Inject]
    public var _fR:_1z5;
    [Inject]
    public var _E6:_1RM;
    [Inject]
    public var _1TT:_1YQ;


    public function _0wA():String {
        return (this.info.parameters.kabam_signed_request);
    }

    public function _17A():Object {
        var signedRequest:String;
        var requestDetails:Array;
        var payload:String;
        var userSession:Object;
        signedRequest = this._0wA();
        try {
            requestDetails = signedRequest.split(".", 2);
            if (requestDetails.length != 2) {
                throw (new Error("Invalid signed request"));
            }
            ;
            payload = this._1Q(requestDetails[1]);
            userSession = this._fR.parse(payload);
        } catch (error:Error) {
            _1TT.info(((("Failed to get user session: " + error.toString()) + ", signed request: ") + signedRequest));
            userSession = null;
        }
        ;
        return (userSession);
    }

    protected function _1Q(_arg1:String):String {
        var _local2:RegExp = /-/g;
        var _local3:RegExp = /_/g;
        var _local4:int = (4 - (_arg1.length % 4));
        while (_local4--) {
            _arg1 = (_arg1 + "=");
        }
        ;
        _arg1 = _arg1.replace(_local2, "+").replace(_local3, "/");
        return (this._E6.decode(_arg1));
    }


}
}//package _db

