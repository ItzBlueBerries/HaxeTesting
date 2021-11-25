package testGame;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.FlxState;

class Friday extends FlxState
{
    
    var yes:FlxSprite;
    var no:FlxSprite;
    var watyes:FlxText;
    var maybe:FlxSprite;

    override public function create():Void
    {

        watyes = new FlxText(0, 0);
        watyes.size = 10;
        watyes.screenCenter();
        watyes.alpha = 0.8;
        watyes.text = "FruitsyOG Testing [Watermark Lol]";
        watyes.y += 300;
        watyes.x -= 100;

        yes = new FlxSprite(0, 0).loadGraphic('assets/images/friday/yes.png');
        yes.antialiasing = true;
        yes.screenCenter();
        yes.setGraphicSize(1024, 1024);

        add(yes);
        add(watyes);

        no = new FlxSprite(0, 0).loadGraphic('assets/images/friday/no.png');
        no.antialiasing = true;
        no.screenCenter();
        no.setGraphicSize(1024, 1024);

        maybe = new FlxSprite(0, 0).loadGraphic('assets/images/friday/maybe.png');
        maybe.antialiasing = true;
        maybe.screenCenter();
        maybe.setGraphicSize(1024, 1024);

    }

    override function update(elapsed:Float)
    {
        if (FlxG.keys.justPressed.UP)
            {
                remove(maybe);
                add(yes);
            }
        else if (FlxG.keys.justPressed.LEFT)
            {
                remove(yes);
                add(no);
            }
        if (FlxG.keys.justPressed.DOWN)
            {
                add(maybe);
                remove(yes);
            }
        else if (FlxG.keys.justPressed.RIGHT)
            {
                remove(maybe);
                add(no);
            }
        if (FlxG.keys.justPressed.M)
            {
                FlxG.switchState(new MakerFile());
                trace('Switched to MakerFile.hx');
            }
        if (FlxG.save.data.makerFileDestroyed && FlxG.keys.justPressed.ALT)
            {
                Sys.sleep(5);
                FlxG.resetGame();
            }
        super.update(elapsed);
    }

}