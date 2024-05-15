//Modules
import funkin.modding.module.Module;
import funkin.modding.module.ModuleHandler;
//Events
import funkin.play.event.SongEvent;
import funkin.play.event.ScriptedSongEvent;
//The BIG guy!
import funkin.play.PlayState;

class PsychEngineEvent extends SongEvent {
    public override function handleEvent(data) {
		if (PlayState.instance == null || PlayState.instance.currentStage == null) return;
		if (PlayState.instance.isMinimalMode) return;
	}

    public function getEventSchema()
    {
        return [
            {
                name: 'name',
                title: 'Event Name',
                type: "string",
                defaultValue: 'null',
            },
            {
                name: 'value1',
                title: 'Value 1',
                type: "string",
                defaultValue: 'nil',
            },
            {
                name: 'value2',
                title: 'Value 2',
                type: "string",
                defaultValue: 'nil'
            }
        ];
    }

    public function getTitle()
    {
        return "Psych Event";
    }

    public function new()
    {
        super('Psych Event');
    }
}
