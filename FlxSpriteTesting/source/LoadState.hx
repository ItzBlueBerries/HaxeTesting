package;

import flixel.FlxState;
import flixel.FlxG;
import testGame.GameState;

class LoadState extends FlxState
{

	override public function create()
    {


        if (FlxG.sound.music == null)
            {
                FlxG.sound.playMusic('assets/music/BackOst.ogg', 1, true);
            }

        FlxG.save.bind('HaxeTesting', 'FruitsyOG');
        Data.save();

        FlxG.switchState(new GameState());
        trace("Game loaded successfully.");

        super.create();
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);
    }

}