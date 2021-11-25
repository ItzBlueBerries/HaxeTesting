package testGame;

import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.addons.ui.FlxUIInputText;
import flixel.FlxState;
import flixel.FlxG;

class MakerFile extends FlxState
{

    var makerFile:FlxUIInputText;
    var makerFileConfirm:FlxButton;
    var stopErrorsCode:FlxText;
    var bg:FlxSprite;
    var systemError:FlxText;
    var waterlol:FlxText;
    
    // text whammy

    var FlxTextA:FlxText;
    var FlxGA:FlxText;
    var FlxUIInputTextA:FlxText;
    var FlxSpriteA:FlxText;
    var FlxButtonA:FlxText;
    var FlxColorA:FlxText;
    var FlxStateA:FlxText;
    var FlxTweenA:FlxText;
    var FlxEaseA:FlxText;

    // ERROR TEXT WHAMMY LOL

    var FlxGErrorD:FlxText;
    var FlxGErrorC:FlxText;
    var FlxGErrorF:FlxText;
    var FlxGErrorM:FlxText;
    var FlxGErrorY:FlxText;
    var FlxGErrorW:FlxText;
    var FlxGErrorS:FlxText;
    var FlxGErrorA:FlxText;
    var FlxGErrorQ:FlxText;
    var FlxGErrorE:FlxText;
    var FlxGErrorN:FlxText;
    var FlxGErrorL:FlxText;
    var FlxGErrorK:FlxText;

    override public function create():Void
    {
        FlxG.mouse.visible = true;

        waterlol = new FlxText(0, 0);
        waterlol.size = 10;
        waterlol.screenCenter();
        waterlol.alpha = 0.8;
        waterlol.text = "FruitsyOG Testing [Watermark Lol]";
        waterlol.y += 300;
        waterlol.x -= 100;

        // text whammy again lol

        FlxGA = new FlxText(0, 0);
        FlxGA.size = 50;
        FlxGA.screenCenter();
        FlxGA.text = "FLXG";
        FlxGA.y += 300;
        FlxGA.x -= 100;

        FlxTextA = new FlxText(0, 0);
        FlxTextA.size = 50;
        FlxTextA.screenCenter();
        FlxTextA.text = "FLX_TEXT";
        FlxTextA.y += 250;
        FlxTextA.x -= 300;

        FlxUIInputTextA = new FlxText(0, 0);
        FlxUIInputTextA.size = 50;
        FlxUIInputTextA.screenCenter();
        FlxUIInputTextA.text = "FLX_UI_INPUT_TEXT";
        FlxUIInputTextA.y += 50;
        FlxUIInputTextA.x -= 300;

        FlxButtonA = new FlxText(0, 0);
        FlxButtonA.size = 50;
        FlxButtonA.screenCenter();
        FlxButtonA.text = "FLX_BUTTON";
        FlxButtonA.y += 200;
        FlxButtonA.x -= 50;

        FlxSpriteA = new FlxText(0, 0);
        FlxSpriteA.size = 50;
        FlxSpriteA.screenCenter();
        FlxSpriteA.text = "FLX_SPRITE";
        FlxSpriteA.y += 100;
        FlxSpriteA.x -= 50;

        FlxColorA = new FlxText(0, 0);
        FlxColorA.size = 50;
        FlxColorA.screenCenter();
        FlxColorA.text = "FLX_COLOR";
        FlxColorA.y += 300;
        FlxColorA.x -= 500;

        FlxStateA = new FlxText(0, 0);
        FlxStateA.size = 50;
        FlxStateA.screenCenter();
        FlxStateA.text = "FLX_STATE";
        FlxStateA.y += 600;
        FlxStateA.x -= 100;

        FlxTweenA = new FlxText(0, 0);
        FlxTweenA.size = 50;
        FlxTweenA.screenCenter();
        FlxTweenA.text = "FLX_TWEEN";
        FlxTweenA.y -= 70;
        FlxTweenA.x += 50;

        FlxEaseA = new FlxText(0, 0);
        FlxEaseA.size = 50;
        FlxEaseA.screenCenter();
        FlxEaseA.text = "FLX_EASE";
        FlxEaseA.y += 100;
        FlxEaseA.x += 300;


        // ERROR TEXT WHAMMY LOL

        FlxGErrorA = new FlxText(0, 0);
        FlxGErrorA.size = 50;
        FlxGErrorA.screenCenter(X);
        FlxGErrorA.text = "FLXG_ERROR";
        FlxGErrorA.y -= 100;
        FlxGErrorA.x += 50;

        FlxGErrorC = new FlxText(0, 0);
        FlxGErrorC.size = 50;
        FlxGErrorC.screenCenter(X);
        FlxGErrorC.text = "FLXG_ERROR";
        FlxGErrorC.y -= 100;
        FlxGErrorC.x -= 100;

        FlxGErrorD = new FlxText(0, 0);
        FlxGErrorD.size = 50;
        FlxGErrorD.screenCenter(X);
        FlxGErrorD.text = "FLXG_ERROR";
        FlxGErrorD.y -= 100;
        FlxGErrorD.x -= 150;
        
        FlxGErrorE = new FlxText(0, 0);
        FlxGErrorE.size = 50;
        FlxGErrorE.screenCenter(X);
        FlxGErrorE.text = "FLXG_ERROR";
        FlxGErrorE.y -= 100;
        FlxGErrorE.x += 200;

        FlxGErrorF = new FlxText(0, 0);
        FlxGErrorF.size = 50;
        FlxGErrorF.screenCenter(X);
        FlxGErrorF.text = "FLXG_ERROR";
        FlxGErrorF.y -= 100;
        FlxGErrorF.x -= 250;

        FlxGErrorK = new FlxText(0, 0);
        FlxGErrorK.size = 50;
        FlxGErrorK.screenCenter(X);
        FlxGErrorK.text = "FLXG_ERROR";
        FlxGErrorK.y -= 100;
        FlxGErrorK.x -= 250;

        FlxGErrorL = new FlxText(0, 0);
        FlxGErrorL.size = 50;
        FlxGErrorL.screenCenter(X);
        FlxGErrorL.text = "FLXG_ERROR";
        FlxGErrorL.y -= 100;
        FlxGErrorL.x += 300;

        FlxGErrorM = new FlxText(0, 0);
        FlxGErrorM.size = 50;
        FlxGErrorM.screenCenter(X);
        FlxGErrorM.text = "FLXG_ERROR";
        FlxGErrorM.y -= 100;
        FlxGErrorM.x -= 350;

        FlxGErrorN = new FlxText(0, 0);
        FlxGErrorN.size = 50;
        FlxGErrorN.screenCenter(X);
        FlxGErrorN.text = "FLXG_ERROR";
        FlxGErrorN.y -= 100;
        FlxGErrorN.x += 400;

        FlxGErrorQ = new FlxText(0, 0);
        FlxGErrorQ.size = 50;
        FlxGErrorQ.screenCenter(X);
        FlxGErrorQ.text = "FLXG_ERROR";
        FlxGErrorQ.y -= 100;
        FlxGErrorQ.x -= 450;

        FlxGErrorS = new FlxText(0, 0);
        FlxGErrorS.size = 50;
        FlxGErrorS.screenCenter(X);
        FlxGErrorS.text = "FLXG_ERROR";
        FlxGErrorS.y -= 100;
        FlxGErrorS.x += 500;

        FlxGErrorW = new FlxText(0, 0);
        FlxGErrorW.size = 50;
        FlxGErrorW.screenCenter(X);
        FlxGErrorW.text = "FLXG_ERROR";
        FlxGErrorW.y -= 100;
        FlxGErrorW.x -= 500;

        FlxGErrorY = new FlxText(0, 0);
        FlxGErrorY.size = 50;
        FlxGErrorY.screenCenter(X);
        FlxGErrorY.text = "FLXG_ERROR";
        FlxGErrorY.y -= 100;
        FlxGErrorY.x += 600;

        function removeErrors()
        {
            remove(FlxGErrorA);
            remove(FlxGErrorC);
            remove(FlxGErrorD);
            remove(FlxGErrorE);
            remove(FlxGErrorK);
            remove(FlxGErrorM);
            remove(FlxGErrorF);
            remove(FlxGErrorL);
            remove(FlxGErrorW);
            remove(FlxGErrorN);
            remove(FlxGErrorQ);
            remove(FlxGErrorY);
            remove(FlxGErrorS);
            remove(FlxGA);
            remove(FlxTextA);
            remove(FlxSpriteA);
            remove(FlxUIInputTextA);
            remove(FlxButtonA);
            remove(FlxColorA);
            remove(FlxStateA);
            remove(FlxTweenA);
            remove(FlxEaseA);
        }

        function addErrors()
        {
            add(FlxGErrorA);
            add(FlxGErrorC);
            add(FlxGErrorD);
            add(FlxGErrorE);
            add(FlxGErrorK);
            add(FlxGErrorM);
            add(FlxGErrorF);
            add(FlxGErrorL);
            add(FlxGErrorW);
            add(FlxGErrorN);
            add(FlxGErrorQ);
            add(FlxGErrorY);
            add(FlxGErrorS);
            add(FlxGA);
            add(FlxTextA);
            add(FlxSpriteA);
            add(FlxUIInputTextA);
            add(FlxButtonA);
            add(FlxColorA);
            add(FlxStateA);
            add(FlxTweenA);
            add(FlxEaseA);
        }

        function addTweens()
        {
            FlxTween.color(FlxGA, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxTextA, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxSpriteA, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxUIInputTextA, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxButtonA, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxColorA, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxStateA, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxTweenA, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxEaseA, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
        
            FlxTween.color(FlxGErrorA, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxGErrorC, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxGErrorD, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxGErrorE, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxGErrorF, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxGErrorK, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxGErrorM, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxGErrorW, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxGErrorS, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxGErrorL, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxGErrorN, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxGErrorQ, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.color(FlxGErrorY, 0.1, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});
        
            FlxTween.tween(FlxGA, {y: FlxGA.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxTextA, {y: FlxTextA.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxSpriteA, {y: FlxSpriteA.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxUIInputTextA, {y: FlxUIInputTextA.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxButtonA, {y: FlxButtonA.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxColorA, {y: FlxColorA.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxStateA, {y: FlxStateA.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxTweenA, {y: FlxTweenA.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxEaseA, {y: FlxEaseA.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});

            FlxTween.tween(FlxGErrorA, {y: FlxGErrorA.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxGErrorC, {y: FlxGErrorC.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxGErrorD, {y: FlxGErrorD.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxGErrorE, {y: FlxGErrorE.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxGErrorF, {y: FlxGErrorF.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxGErrorK, {y: FlxGErrorK.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxGErrorM, {y: FlxGErrorM.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxGErrorW, {y: FlxGErrorW.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxGErrorS, {y: FlxGErrorS.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxGErrorL, {y: FlxGErrorL.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxGErrorN, {y: FlxGErrorN.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxGErrorQ, {y: FlxGErrorQ.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
            FlxTween.tween(FlxGErrorY, {y: FlxGErrorY.y + 50}, 0.2, {ease: FlxEase.quadInOut, type: PINGPONG});
        }

        addErrors();
        addTweens();

        if (FlxG.save.data.makerFileDestroyed)
            {
                FlxG.resetGame();
                trace('The makerfile has already been destroyed. :)');
            }
        /*else
            {
                FlxG.resetGame();
                trace("The MakerFile is too dangerous.. cheat by compiling the source code AND changing it at https://github.com/ItzBlueBerries/HaxeTesting/FlxSpriteTesting/");
            }/

        /*if (!FlxG.save.data.makerFileDestroyed) // just in case lol
            FlxG.resetGame();
        else
            FlxG.resetGame();

        if (FlxG.save.data.makerFileDestroyed == null) // just in case again lol
            FlxG.resetGame();
        else
            FlxG.resetGame();*/

        // FlxG.resetGame(); // keep your ass out lmao

        bg = new FlxSprite(0,0).makeGraphic(1280, 720, FlxColor.WHITE);
        bg.alpha = 0.25;
        add(bg);

        FlxTween.color(bg, 0.2, FlxColor.WHITE, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});

        systemError = new FlxText(0, 0);
        systemError.text = "System Error..";
        systemError.size = 100;
        systemError.screenCenter();
        systemError.y -= 65;

        FlxTween.color(systemError, 0.1, FlxColor.WHITE, FlxColor.RED);

        makerFile = new FlxUIInputText(0, 0, 25, null, 32, FlxColor.RED, FlxColor.GRAY);
        makerFile.x -= 150;
        makerFile.y -= 200;
        makerFile.alpha = 0.25;
        makerFile.screenCenter();

        add(makerFile);
        add(systemError);
        add(stopErrorsCode);

        FlxTween.color(makerFile, 0.1, FlxColor.GRAY, FlxColor.RED, {ease: FlxEase.quadInOut, type: PINGPONG});

        stopErrorsCode = new FlxText(0, 0);
        stopErrorsCode.size = 5;
        stopErrorsCode.screenCenter();
        stopErrorsCode.alpha = 0.50;
        stopErrorsCode.text = "make the file:MakerFile.HX:MakerFile:MkDir:MkFile: CODE XXX, 3,2,1.FruitScript.COM; Run('gayass, login');.OnComplete(ExitCode,ThankYou);";
        stopErrorsCode.y = waterlol.y - 200;
        stopErrorsCode.x = waterlol.x - 150;
        add(stopErrorsCode);

        makerFileConfirm = new FlxButton(0, makerFile.y + 200, "confirm lol", function()
            {
                if(makerFile.text == "make the file:MakerFile.HX:MakerFile:MkDir:MkFile: CODE XXX, 3,2,1.FruitScript.COM; Run('gayass, login');.OnComplete(ExitCode,ThankYou);") // secret reward lol
                    {
                        trace("Closing all consoles..");
                        Sys.sleep(5);
                        remove(makerFile);
                        remove(makerFileConfirm);
                        remove(stopErrorsCode);
                        trace("Error deleted.");
                        Sys.sleep(5);
                        remove(systemError);
                        removeErrors();
                        trace("System restart initiated.");
                        FlxG.save.data.makerFileDestroyed = true;
                        FlxG.save.flush();
                        Sys.sleep(15);
                        trace("MakerFile Cleared. System Cleaned. MakerFile.hx Disabled. Back to Normal.");
                        Sys.exit(0);
                    }
                else
                    {
                        trace("...");
                        Sys.sleep(5);
                    }
             });
        makerFileConfirm.screenCenter(X);
        add(makerFileConfirm);

        FlxTween.color(makerFileConfirm, 0.2, FlxColor.WHITE, FlxColor.BLACK, {ease: FlxEase.quadInOut, type: PINGPONG});
        super.create();
    }

    override function update(elapsed:Float)
    {
        if (FlxG.keys.anyJustPressed([UP, DOWN, LEFT, RIGHT, ESCAPE, TAB, SHIFT, CONTROL, Q, W, E, R, T, Y, U, I, O, P, A, D, F, G, H, J, K, L, Z, X, C, V, B, N, M]))
            trace("\nMakerFile.hx has keys disabled, please try again!\n...Are you trying to put in the code?");
        if (FlxG.keys.justPressed.ALT)
            Sys.sleep(50);
        super.update(elapsed);
    }

}