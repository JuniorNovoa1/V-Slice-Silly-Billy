import funkin.modding.module.Module;
import funkin.modding.module.ModuleHandler;
import funkin.play.character.BaseCharacter;
import funkin.play.character.CharacterDataParser;
import funkin.play.character.CharacterType;
import funkin.play.song.Song;
import funkin.play.PlayState;

class CallbackHandler extends Module 
{
    public function new() {
		super('callbackhandler');
	}

    function realvideopath(path):String
    {
        return "mods/hitsingle/videos/videos/" + path + ".mp4";
        if (Assets.exists(Paths.videos(path)) == true)
            return Paths.videos(path);
        if (Assets.exists(Paths.videos("mods/hitsingle/videos/videos/" + path + ".mp4")) == true) //for some reason `Paths.videos(path)` doesn't work with mods, so this is a simple workaround.
            return "mods/hitsingle/videos/videos/" + path + ".mp4";
        return "";
    }

	function changeCharacter(newChar:String, type:CharacterType) {
        if (type == CharacterType.DAD) PlayState.instance.currentStage.getDad(true);
        if (type == CharacterType.BF) PlayState.instance.currentStage.getBoyfriend(true);
        if (type == CharacterType.GF) PlayState.instance.currentStage.getGirlfriend(true);
		//kills them
		var char:BaseCharacter = CharacterDataParser.fetchCharacter(newChar);
		char.characterType = type;
		PlayState.instance.currentStage.addCharacter(char, type);
		PlayState.instance.currentStage.refresh();
		char.resetCharacter();
	}
}
