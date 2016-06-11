// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Ql._0ht

package _0Ql {
import _1Sm.*;

import flash.events.Event;
import flash.events.IEventDispatcher;

public interface _0ht extends _1aI {

    function get _yn():String;

    function get eventClass():Class;

    function get target():IEventDispatcher;

    function set target(_arg1:IEventDispatcher):void;

    function dispatchEvent(_arg1:Event):Boolean;

}
}//package _0Ql

