package testGame;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.FlxState;
import flixel.text.FlxText;

class Deleted extends FlxState
{

    var yes:FlxSprite;
    var no:FlxSprite;
    var maybe:FlxSprite;
    var wat:FlxText;

    override public function create():Void
    {

        wat = new FlxText(0, 0);
        wat.size = 10;
        wat.screenCenter();
        wat.alpha = 0.8;
        wat.text = "FruitsyOG Testing [Watermark Lol]";
        wat.y += 300;
        wat.x -= 100;

        yes = new FlxSprite(0, 0).loadGraphic('assets/images/deleted/yes.png');
        yes.antialiasing = true;
        yes.screenCenter();
        yes.setGraphicSize(1024, 1024);

        add(yes);
        add(wat);

        no = new FlxSprite(0, 0).loadGraphic('assets/images/deleted/no.png');
        no.antialiasing = true;
        no.screenCenter();
        no.setGraphicSize(1024, 1024);

        maybe = new FlxSprite(0, 0).loadGraphic('assets/images/deleted/maybe.png');
        maybe.antialiasing = true;
        maybe.screenCenter();
        maybe.setGraphicSize(1024, 1024);

    }

    override function update(elapsed:Float)
    {
        if (FlxG.keys.justPressed.UP)
            {
                add(maybe);
                remove(yes);
            }
        else
            {
                remove(yes);
                add(no);
            }
        if (FlxG.keys.justPressed.DOWN)
            {
                remove(maybe);
                add(yes);
            }
        else
            {
                remove(yes);
                add(no);
            }
        if (FlxG.keys.justPressed.C)
            {
                FlxG.switchState(new CuteState());
                trace('Switched to CuteState.hx');
            }
        if (FlxG.save.data.makerFileDestroyed && FlxG.keys.justPressed.ALT)
            {
                Sys.sleep(5);
                FlxG.resetGame();
            }
        super.update(elapsed);
    }

}