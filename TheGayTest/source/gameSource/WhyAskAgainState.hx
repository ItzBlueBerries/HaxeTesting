package gameSource;

import flixel.FlxG;
import flixel.text.FlxText;
import flixel.FlxState;

class WhyAskAgainState extends FlxState
{

    var why:FlxText;

    override public function create():Void
    {

        FlxG.mouse.visible = false;

        why = new FlxText(0, 0);
        why.text = "Why even ask? LOL, \nits already saved and confirmed in your local files\nno need to ask again now, haha.";
        why.size = 30;
        why.screenCenter();
        why.setFormat("assets/fonts/SuperMario256.tff", 25);
        add(why);

    }

}