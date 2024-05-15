import funkin.play.PlayState;
//Song Events
import funkin.play.event.SongEvent;
import funkin.play.event.ScriptedSongEvent;
import funkin.modding.events.SongLoadScriptEvent;
//Modules
import funkin.modding.module.Module;
import funkin.modding.module.ModuleHandler;

class EventHandler extends ScriptedSongEvent {
    override function new() {
        super('Event Handler');
    }

    override function getEventSchema() {
        return [
            {
                name: 'eventname',
                title: 'Event Name',
                type: "string",
                defaultValue: 'Blank',
            },
            {
                name: 'value1',
                title: 'Value 1',
                type: "string",
                defaultValue: 'Blank',
            },
            {
                name: 'value2',
                title: 'Value 2',
                type: "string",
                defaultValue: 'Blank'
            }
        ];
    }

    override function handleEvent(data) {
        if (data.value != null) {
            //do shit here!!!
        }
	}
}

class EventHandlerModule extends Module {
	public function new() {
		super('event-handler-module');
	}
}