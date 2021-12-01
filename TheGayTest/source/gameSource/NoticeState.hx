package gameSource;

import flixel.tweens.motion.QuadMotion;
import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;

class NoticeState extends FlxState
{

    var noticeText:FlxText;

    override public function create():Void
    {

        FlxG.mouse.visible = false;

        noticeText = new FlxText(0, 0);
        noticeText.text = "this is a joke, lmao\nanyways take the 'test'";
        noticeText.size = 25;
        noticeText.screenCenter();
        noticeText.setFormat("assets/fonts/SuperMario256.tff", 25);
        add(noticeText);
    }

    override function update(elapsed:Float)
    {
        if (FlxG.keys.justPressed.ENTER)
            {
                FlxG.switchState(new Question());
                trace('Switched to Question.hx');
            }
        super.update(elapsed);
    }

}