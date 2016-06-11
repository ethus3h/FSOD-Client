// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0tb._0Et

package _0tb {
import _0tf._0yo;

import _1PE.Account;

import _4p._1ae;

import com.company.util._0AY;

import flash.events.ErrorEvent;

public class _0Et {

    [Inject]
    public var account:Account;
    [Inject]
    public var client:_0yo;
    [Inject]
    public var setup:_1ae;
    [Inject]
    public var event:ErrorEvent;
    private var error;


    public function execute():void {
        this.event.preventDefault();
        this.error = this.event["error"];
        this._1cM();
        var _local1:Array = [];
        _local1.push(("Build: " + this.setup._0aV()));
        _local1.push(("message: " + this._1cM()));
        _local1.push(("stackTrace: " + this.getStackTrace()));
        _local1.push(_0AY._0Fo());
        this.client._160(false);
        this.client.sendRequest("/clientError/add", {
            text: _local1.join("\n"),
            guid: this.account.getUserId()
        });
    }

    private function _1cM():String {
        if ((this.error is Error)) {
            return (this.error.message);
        }
        if (this.event != null) {
            return (this.event.text);
        }
        if (this.error != null) {
            return (this.error.toString());
        }
        return ("(empty)");
    }

    private function getStackTrace():String {
        return ((((this.error is Error)) ? Error(this.error).getStackTrace() : "(empty)"));
    }


}
}//package _0tb

