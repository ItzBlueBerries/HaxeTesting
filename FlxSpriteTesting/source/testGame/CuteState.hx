package testGame;

import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.addons.ui.FlxUIInputText;
import sys.io.File;

class CuteState extends FlxState
{

    var yes:FlxSprite;
    var no:FlxSprite;
    var anotherWatermark:FlxText;
    var secretCode:FlxUIInputText;
    var secretCodeConfirm:FlxButton;
    var code:FlxText;

    override public function create():Void
    {

        var file = File.append('booted.txt', false);
        var fileSecond = File.append('gay.txt', false);

        anotherWatermark = new FlxText(0, 0);
        anotherWatermark.size = 10;
        anotherWatermark.screenCenter();
        anotherWatermark.alpha = 0.8;
        anotherWatermark.text = "FruitsyOG Testing [Watermark Lol]";
        anotherWatermark.y += 300;
        anotherWatermark.x -= 100;

        code = new FlxText(0, 0);
        code.size = 10;
        code.screenCenter();
        code.alpha = 0.50;
        code.text = "gayass";
        code.y = anotherWatermark.y + 50;
        code.x = anotherWatermark.x - 100;

        yes = new FlxSprite(0, 0).loadGraphic('assets/images/cute/yes.png');
        yes.antialiasing = true;
        yes.screenCenter();
        yes.setGraphicSize(1024, 1024);

        add(yes);
        add(anotherWatermark);
        add(code);

        no = new FlxSprite(0, 0).loadGraphic('assets/images/cute/no.png');
        no.antialiasing = true;
        no.screenCenter();
        no.setGraphicSize(1024, 1024);

        // the beginning of rewards lol

        secretCode = new FlxUIInputText(0, 0, 250, null, 32, FlxColor.BLACK, FlxColor.WHITE);
        secretCode.x -= 150;
        secretCode.y -= 200;
        secretCode.screenCenter();

        secretCodeConfirm = new FlxButton(0, secretCode.y + 200, "confirm lol", function()
            {
                if(secretCode.text == "gayass") // secret reward lol
                    {
                        trace("You've been awarded ig");
                        FlxG.switchState(new AwardState());
                        fileSecond.writeString('gayass');
                        file.close();
                    }
                else
                    {
                        file.writeString('You got booted, lmao, get the code right next time if you want the award');
                        file.writeString('\nIgnoring it is also an option ig :shrug:');
                        file.close();
                        remove(secretCodeConfirm);
                        remove(secretCode);
                        trace('im abouta boot you lol');
                        Sys.sleep(15);
                        Sys.exit(0);
                    }
             });
        secretCodeConfirm.screenCenter(X);

    }

    override function update(elapsed:Float)
    {

        if (FlxG.keys.justPressed.UP)
            {
                remove(yes);
                add(no);
                add(secretCode);
                add(secretCodeConfirm);
                add(code);
                FlxG.mouse.visible = true;
            }
        if (FlxG.keys.justPressed.DOWN)
            {
                FlxG.mouse.visible = false;
                remove(no);
                add(yes);
                remove(secretCode);
                remove(secretCodeConfirm);
                remove(code);
            }
        if (FlxG.keys.justPressed.F)
            {
                FlxG.switchState(new Friday());
                trace('Switched to Friday.hx');
            }
        if (FlxG.save.data.makerFileDestroyed && FlxG.keys.justPressed.ALT)
            {
                Sys.sleep(5);
                FlxG.resetGame();
            }
        super.update(elapsed);
    }

}