// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1L3._0tx

package _1L3 {
public class _0tx {

    private static const _jF:Object = {
        Humanoid: "Pets.humanoid",
        Feline: "Pets.feline",
        Canine: "Pets.canine",
        Avian: "Pets.avian",
        Exotic: "Pets.exotic",
        Farm: "pets.Farm",
        Woodland: "Pets.woodland",
        Reptile: "Pets.reptile",
        Insect: "pets.Insect",
        Penguin: "pets.Penguin",
        Aquatic: "Pets.aquatic",
        Spooky: "Pets.spooky",
        Automaton: "Pets.automaton"
    };


    public static function _0Nk(_arg1:String):String {
        var _local2:String = _jF[_arg1];
        _local2 = ((_local2) || ((((_arg1 == "? ? ? ?")) ? "Pets.miscellaneous" : "")));
        return (_local2);
    }


}
}//package _1L3

