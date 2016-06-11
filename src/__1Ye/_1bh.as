// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Ye._1bh

package __1Ye {
import com.company.googleanalytics.GA;
import com.google.analytics.GATracker;

import flash.display.Stage;

public class _1bh {

    private var tracker:GATracker;


    public function init(_arg1:Stage, _arg2:String):void {
        this.tracker = new GATracker(_arg1, _arg2);
        GA.setTracker(this.tracker);
    }

    public function trackEvent(_arg1:String, _arg2:String, _arg3:String, _arg4:Number):Boolean {
        return (this.tracker.trackEvent(_arg1, _arg2, _arg3, _arg4));
    }

    public function _0jW(_arg1:String):void {
        this.tracker.trackPageview(_arg1);
    }


}
}//package _1Ye

