import flixel.FlxSprite;
import funkin.play.character.BaseCharacter;

import funkin.play.event.ScriptedSongEvent;
// Data from the chart
import funkin.data.song.SongData;
import funkin.data.song.SongData.SongEventData;
// Data from the event schema
import funkin.play.event.SongEvent;
import funkin.data.event.SongEventSchema;
import funkin.data.event.SongEventSchema.SongEventFieldType;

class PsychEngineEvent extends ScriptedSongEvent
{
  public function new()
  {
    super('Psych Event');
  }

  override function handleEvent(data:SongEventData)
  {
    // Does nothing if there is no PlayState camera or stage.
    if (PlayState.instance == null || PlayState.instance.currentStage == null) return;

    var eventName = data.getString('name');
    var val1 = data.getString('value1');
    var val2 = data.getString('value2');

    switch (eventName)
    {
    }
  }

  override function getTitle()
  {
    return "Psych Engine Event";
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
      }
    ];
  }
}
