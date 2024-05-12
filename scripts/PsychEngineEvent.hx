import funkin.play.character.CharacterType;
import funkin.modding.module.ModuleHandler;
import funkin.modding.module.Module;
import funkin.play.character.BaseCharacter;
import funkin.play.character.CharacterDataParser;
import funkin.play.event.SongEvent;
import funkin.play.event.ScriptedSongEvent;
import funkin.play.PlayState;

class PsychEngineEvent extends ScriptedSongEvent
{
	  public function new()
    {
        super('Psych Event');
    }

    public override function getTitle()
    {
        return "Psych Event";
    }

    override function getEventSchema()
    {
        return [
        {
            name: 'name',
            title: 'Event Name',
            type: SongEventFieldType.STRING,
            defaultValue: 'null',
        },
        {
            name: 'value1',
            title: 'Value 1',
            type: SongEventFieldType.STRING,
            defaultValue: '',
        },
        {
            name: 'value2',
            title: 'Value 2',
            type: SongEventFieldType.STRING,
            defaultValue: ''
        }];
    }
}
