import Toybox.Lang;
import Toybox.WatchUi;

class HabitLoggerDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new HabitLoggerMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}