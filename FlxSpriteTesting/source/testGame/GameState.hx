package testGame;

import flixel.FlxState;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.FlxG;

class GameState extends FlxState 
{

    var watermark:FlxText;
    var yes:FlxSprite;
    var no:FlxSprite;

    override public function create():Void
    {

        watermark = new FlxText(0, 0);
        watermark.size = 10;
        watermark.screenCenter();
        watermark.alpha = 0.8;
        watermark.text = "FruitsyOG Testing [Watermark Lol]";
        watermark.y += 300;
        watermark.x -= 100;

        yes = new FlxSprite(0, 0).loadGraphic('assets/images/yes.png');
        yes.antialiasing = true;
        yes.screenCenter();
        yes.setGraphicSize(1024, 1024);

        add(yes);
        add(watermark);

        no = new FlxSprite(0, 0).loadGraphic('assets/images/no.png');
        no.antialiasing = true;
        no.screenCenter();
        no.setGraphicSize(1024, 1024);

    }

    override function update(elapsed:Float)
    {
        if (FlxG.keys.justPressed.UP)
            {
                remove(yes);
                add(no);
            }
        if (FlxG.keys.justPressed.DOWN)
            {
                remove(no);
                add(yes);
            }
        if (FlxG.keys.justPressed.D)
            {
                FlxG.switchState(new Deleted());
                trace('Switched to Deleted.hx');
            }
        if (FlxG.save.data.makerFileDestroyed && FlxG.keys.justPressed.ALT)
            {
                Sys.sleep(5);
                FlxG.resetGame();
            }
        super.update(elapsed);
    }

}
