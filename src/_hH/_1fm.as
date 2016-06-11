// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_hH._1fm

package _hH {
import _0oL.Server;
import _0oL._0hs;

import com.company.assembleegameclient.parameters.Parameters;

public class _1fm {

    [Inject]
    public var servers:_0hs;
    [Inject]
    public var data:XML;


    public function execute():void {
        this.servers._1xn(this._L1());
    }

    private function _L1():Vector.<Server> {
        var _local3:XML;
        var _local1:XMLList = this.data.child("Servers").child("Server");
        var _local2:Vector.<Server> = new <Server>[];
        for each (_local3 in _local1) {
            _local2.push(this._YS(_local3));
        }
        ;
        return (_local2);
    }

    private function _YS(_arg1:XML):Server {
        return (new Server().setName(_arg1.Name).setAddress(_arg1.DNS).setPort(Parameters._oE).setLatLong(Number(_arg1.Lat), Number(_arg1.Long)).setUsage(_arg1.Usage).setIsAdminOnly(_arg1.hasOwnProperty("AdminOnly")));
    }


}
}//package _hH

