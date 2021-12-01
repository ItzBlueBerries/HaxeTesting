package;

import flixel.FlxState;
import flixel.FlxG;
import gameSource.NoticeState;

class LoadState extends FlxState
{

	override public function create()
    {
        FlxG.save.bind("HaxeTesting", "FruitsyOG");
        Data.save();

        FlxG.switchState(new NoticeState());
        trace('Game loaded successfully.');

        super.create();
    }

}