import funkin.play.event.ScriptedSongEvent;
import funkin.modding.events.SongLoadScriptEvent;
//Modules
import funkin.modding.module.Module;
import funkin.modding.module.ModuleHandler;

import funkin.play.PlayState;

class EventHandler extends ScriptedSongEvent {
    override function new() {
        super('Event Handler');
    }

    override function getEventSchema() {
        return [
            {
                name: 'eventname',
                title: 'Event Name',
                type: 'string',
                defaultValue: 'nil',
            },
            {
                name: 'value1',
                title: 'Value 1',
                type: 'string',
                defaultValue: 'nil',
            },
            {
                name: 'value2',
                title: 'Value 2',
                type: 'string',
                defaultValue: 'nil',
            }
        ];
    }

    override function handleEvent(data) {
		if (data.value != null) {
			//shiii
		}
	}
}

class EventHandlerModule extends Module {
	public function new() {
		super('event-handler-module');
	}

    override function onCreate(e) {
        for (i in 0...10)
		    trace('whaaat are you working now bitch');
	}
}