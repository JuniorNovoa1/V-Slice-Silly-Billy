import funkin.play.PlayState;
import funkin.play.event.SongEvent;
import funkin.modding.events.ScriptEvent;
import flixel.FlxG;

class EventHandler extends SongEvent{
    function new() {
		super('Event');
	}

    override function handleEvent(data) {
		if (PlayState.instance == null || PlayState.instance.currentStage == null) return;
		if (PlayState.instance.isMinimalMode) return;
	}

	function getEventSchema() {
		return [
            {
                name: "event",
                title: "Event Name",
                defaultValue: "Event Title",
                type: "string",
            }
		];
	}

	function getTitle() {
		return "Event";
	}
}
