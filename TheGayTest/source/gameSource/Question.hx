package gameSource;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class Question extends FlxState
{

    var areYou:FlxText;
    var button1:FlxButton;
    var button2:FlxButton;

    override public function create():Void
    {

        FlxG.mouse.visible = true;

        areYou = new FlxText(0, 0);
        areYou.text = "Are you the g word?";
        areYou.size = 30;
        areYou.screenCenter();
        areYou.setFormat("assets/fonts/SuperMario256.tff", 25);
        add(areYou);

        button1 = new FlxButton(0, areYou.y + 50, "No", function()
            {
                if (!FlxG.save.data.datWhowADaMXxxXXxCode_BeepBop_CWEODSOAPA_LionKing_Cam_Enc_Confirm_Yay_m)
                    {
                        trace('Alright.');
                        remove(button1);
                    }
            });
        button1.x += 100;
        button1.screenCenter(X);
        add(button1);

        button2 = new FlxButton(0, areYou.y - 50, "Yes", function()
            {
                if (!FlxG.save.data.datWhowADaMXxxXXxCode_BeepBop_CWEODSOAPA_LionKing_Cam_Enc_Confirm_Yay_m)
                    {
                        FlxG.save.data.datWhowADaMXxxXXxCode_BeepBop_CWEODSOAPA_LionKing_Cam_Enc_Confirm_Yay_m = true;
                        FlxG.save.flush();
                        trace('Alright.');
                        remove(button2);
                        Sys.sleep(5);
                        FlxG.resetGame();
                    }
                else if (FlxG.save.data.datWhowADaMXxxXXxCode_BeepBop_CWEODSOAPA_LionKing_Cam_Enc_Confirm_Yay_m)
                    {
                        FlxG.switchState(new WhyAskAgainState());
                    }
            });
        button2.x -= 100;
        button2.screenCenter(X);
        add(button2);

    }

    override function update(elapsed:Float)
    {
        if (FlxG.keys.justPressed.G)
            {
                FlxG.openURL("https://theuselessweb.com/");
                trace('Lmao you pushed G lol');
            }
        super.update(elapsed);
    }

}