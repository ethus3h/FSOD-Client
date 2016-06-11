// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Fr._qf

package _1Fr {
import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.parameters.Parameters;

public class _qf {

    public var _1P:GameSprite;


    public function _gH():String {
        return (((this._1P.model.getName()) ? this._1P.model.getName() : this._1P.map.player_.name_));
    }

    public function _B1():String {
        return ((((this._1P.gsc_.gameId_ == Parameters._Cf)) ? "OPTIONS_BUTTON" : "NEXUS_BUTTON"));
    }


}
}//package _1Fr

