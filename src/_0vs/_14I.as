// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0vs._14I

package _0vs {
import flash.display.DisplayObjectContainer;
import flash.display.LoaderInfo;
import flash.system.Capabilities;

public class _14I {

    private const _1eD:String = "Desktop";
    private static var platform:_1kZ;
    [Inject]
    public var root:DisplayObjectContainer;


    public function _vU():Boolean {
        return (!((Capabilities.playerType == this._1eD)));
    }

    public function _h4():Boolean {
        return ((Capabilities.playerType == this._1eD));
    }

    public function _1MA():_1kZ {
        return ((platform = ((platform) || (this._ka()))));
    }

    private function _ka():_1kZ {
        var _local1:Object = LoaderInfo(this.root.stage.root.loaderInfo).parameters;
        if (this._0sL(_local1)) {
            return (_1kZ._07O);
        }
        ;
        if (this._0D5(_local1)) {
            return (_1kZ._hS);
        }
        ;
        if (this._UF(_local1)) {
            return (_1kZ._Sh);
        }
        ;
        return (_1kZ._bW);
    }

    private function _0sL(_arg1:Object):Boolean {
        return (!((_arg1.kongregate_api_path == null)));
    }

    private function _0D5(_arg1:Object):Boolean {
        return (!((_arg1.steam_api_path == null)));
    }

    private function _UF(_arg1:Object):Boolean {
        return (!((_arg1.kabam_signed_request == null)));
    }


}
}//package _0vs

