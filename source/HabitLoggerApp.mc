import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class HabitLoggerApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
    }

    // Return the initial view of your application here
    function getInitialView() as [Views] or [Views, InputDelegates] {
        return [ new HabitLoggerView(), new HabitLoggerDelegate() ];
    }

    var timestamps = new Array<Number>[100];

    function markHabit() {
        var timestamp = CURRENT_TIME_DEFAULT(); // Need to find how to get time
        timestamps.add(timestamp);
    }

}

function getApp() as HabitLoggerApp {
    return Application.getApp() as HabitLoggerApp;
}