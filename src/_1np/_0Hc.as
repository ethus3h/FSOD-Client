// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1np._0Hc

package _1np {
import _08f.Console;

import flash.events.TextEvent;
import flash.text.TextFieldAutoSize;

public class _0Hc extends _ZM {

    public static const NAME:String = "channelsPanel";

    public function _0Hc(_arg1:Console) {
        super(_arg1);
        name = NAME;
        init(10, 10, false);
        _1FH = _kp("channelsField");
        _1FH.wordWrap = true;
        _1FH.width = 160;
        _1FH.multiline = true;
        _1FH.autoSize = TextFieldAutoSize.LEFT;
        _07l(_1FH, this.onMenuRollOver, this._0WF);
        _0C(_1FH);
        addChild(_1FH);
    }

    public function update():void {
        _1FH.wordWrap = false;
        _1FH.width = 80;
        var _local1:String = ('<high><menu> <b><a href="event:close">X</a></b></menu> ' + console.panels.mainPanel.getChannelsLink());
        _1FH.htmlText = (_local1 + "</high>");
        if (_1FH.width > 160) {
            _1FH.wordWrap = true;
            _1FH.width = 160;
        }
        ;
        width = (_1FH.width + 4);
        height = _1FH.height;
    }

    protected function _0WF(_arg1:TextEvent):void {
        _1FH.setSelection(0, 0);
        if (_arg1.text == "close") {
            console.panels.channelsPanel = false;
        } else {
            if (_arg1.text.substring(0, 8) == "channel_") {
                console.panels.mainPanel.onChannelPressed(_arg1.text.substring(8));
            }
            ;
        }
        ;
        _1FH.setSelection(0, 0);
        _arg1.stopPropagation();
    }

    private function onMenuRollOver(_arg1:TextEvent):void {
        console.panels.mainPanel.onMenuRollOver(_arg1, this);
    }


}
}//package _1np

