package testGame;

import flixel.FlxG;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.util.FlxColor;
import flixel.addons.ui.FlxUIInputText;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.FlxSprite;
import flixel.FlxState;

class AwardState extends FlxState
{

    var background:FlxSprite;
    var congrats:FlxText;
    var clickHere:FlxButton;
    var secretSECRETcode:FlxUIInputText;
    var code:FlxText;
    var secretSECRETcodeConfirm:FlxButton;
    var watermak:FlxText;
    var awardsecret:FlxSprite;

    override public function create():Void
    {

        background = new FlxSprite(0, 0).makeGraphic(1280, 720, FlxColor.GRAY);
        background.alpha = 0.25;
        add(background);

        FlxTween.color(background, 1, FlxColor.GRAY, FlxColor.YELLOW, {ease: FlxEase.quadInOut, type: PINGPONG});

        awardsecret = new FlxSprite(0,0).loadGraphic('assets/images/awardsecret.png');
        awardsecret.antialiasing = true;
        awardsecret.screenCenter();
        awardsecret.setGraphicSize(1024, 1024);

        watermak = new FlxText(0, 0);
        watermak.size = 10;
        watermak.screenCenter();
        watermak.alpha = 0.8;
        watermak.text = "FruitsyOG Testing [Watermark Lol]";
        watermak.y += 300;
        watermak.x -= 100;
        add(watermak);

        code = new FlxText(0, 0);
        code.size = 5;
        code.screenCenter();
        code.alpha = 0.50;
        code.text = "login lol, its literally on the dang button";
        code.y = watermak.y - 100;
        code.x = watermak.x - 150;
        add(code);

        congrats = new FlxText(0, 0);
        congrats.text = "YOU DID IT!!! lol";
        congrats.size = 100;
        congrats.screenCenter();
        congrats.y -= 65;
        add(congrats);

        FlxTween.tween(congrats, {y: congrats.y + 50}, 1.3, {ease: FlxEase.quadInOut, type: PINGPONG});

        secretSECRETcode = new FlxUIInputText(0, 0, 50, null, 32, FlxColor.BLACK, FlxColor.WHITE);
        secretSECRETcode.x -= 150;
        secretSECRETcode.y -= 200;
        secretSECRETcode.screenCenter();
        add(secretSECRETcode);

        clickHere = new FlxButton(0, congrats.y + 50, "click me!", function()
            {
                FlxG.openURL("https://youtu.be/WRqFZMljZO0");
            });
        clickHere.screenCenter(X);

        secretSECRETcodeConfirm = new FlxButton(0, secretSECRETcode.y + 250, "login", function()
            {
                if (secretSECRETcode.text == "login")
                    {
                        trace('lol logging in ig');
                        FlxG.openURL("https://youtu.be/J2lCSqH2NX0?t=177");
                        FlxG.resetGame();
                    }
                else
                    {
                        trace('you get nothing, just nothing lol');
                        remove(secretSECRETcode);
                        remove(secretSECRETcodeConfirm);
                        remove(congrats);
                        remove(clickHere);
                        remove(code);
                        remove(watermak);
                        remove(awardsecret);
                    }
            });
        secretSECRETcodeConfirm.screenCenter(X);
        add(secretSECRETcodeConfirm);

    };

    override function update(elapsed:Float)
    {
        if (FlxG.keys.justPressed.G)
            {
                remove(background);
                add(awardsecret);
                add(clickHere);
            }
        if (FlxG.keys.justPressed.DOWN)
            {
                remove(awardsecret);
                add(background);
                remove(clickHere);
            }
        if (FlxG.save.data.makerFileDestroyed && FlxG.keys.justPressed.ALT)
            {
                Sys.sleep(5);
                FlxG.resetGame();
            }
        super.update(elapsed);
    };

}