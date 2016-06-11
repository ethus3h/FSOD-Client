// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1E-._03e

package _1E {
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.objects.Player;

import flash.utils.Dictionary;

public class _03e {

    public var player:Player;
    public var gameObjects:Dictionary;


    public function _1fD(_arg1:int):GameObject {
        var _local2:GameObject = this.gameObjects[_arg1];
        if (((!(_local2)) && ((this.player.objectId_ == _arg1)))) {
            _local2 = this.player;
        }
        ;
        return (_local2);
    }


}
}//package _1E-

