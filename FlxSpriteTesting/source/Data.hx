package;

import flixel.FlxG;

class Data
{
    public static function save()
    {
        FlxG.mouse.visible = false;

        if (FlxG.save.data.makerFileDestroyed == null)
            FlxG.save.data.makerFileDestroyed = false;
    }
}