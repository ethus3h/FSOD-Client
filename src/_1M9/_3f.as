// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1M9._3f

package _1M9 {
import _0oL.*;

import _10a._FU;

import com.company.assembleegameclient.parameters.Parameters;

public class _3f implements _0hs {

    private const servers:Vector.<Server> = new <Server>[];

    [Inject]
    public var model:_FU;


    public function _1xn(_arg1:Vector.<Server>):void {
        var _local2:Server;
        this.servers.length = 0;
        for each (_local2 in _arg1) {
            this.servers.push(_local2);
        }
        ;
    }

    public function _1Z3():Vector.<Server> {
        return (this.servers);
    }

    public function _Fg():Server {
        var _local6:Server;
        var _local7:int;
        var _local8:Number;
        var _local1:Boolean = this.model._1mi();
        var _local2:_1uM = this.model._1iC();
        var _local3:Server;
        var _local4:Number = Number.MAX_VALUE;
        var _local5:int = int.MAX_VALUE;
        for each (_local6 in this.servers) {
            if (((_local6._1or()) && (!(_local1)))) {
            } else {
                if (_local6.name == Parameters.data_.preferredServer) {
                    return (_local6);
                }
                ;
                _local7 = _local6.priority();
                _local8 = _1uM.distance(_local2, _local6._0Gg);
                if ((((_local7 < _local5)) || ((((_local7 == _local5)) && ((_local8 < _local4)))))) {
                    _local3 = _local6;
                    _local4 = _local8;
                    _local5 = _local7;
                }
                ;
            }
            ;
        }
        ;
        return (_local3);
    }

    public function _Pg():Boolean {
        return ((this.servers.length > 0));
    }


}
}//package _1M9

