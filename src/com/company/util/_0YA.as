// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.util._0YA

package com.company.util {
import flash.xml.XMLDocument;
import flash.xml.XMLNode;
import flash.xml.XMLNodeType;

public class _0YA {


    public static function unescape(_arg1:String):String {
        return (new XMLDocument(_arg1).firstChild.nodeValue);
    }

    public static function escape(_arg1:String):String {
        return (XML(new XMLNode(XMLNodeType.TEXT_NODE, _arg1)).toXMLString());
    }


}
}//package com.company.util

