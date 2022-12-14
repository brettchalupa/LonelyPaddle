package;

import Input;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.system.FlxSound;

using flixel.util.FlxSpriteUtil;

class StartState extends FlxState
{
	var starSound:FlxSound;

	override public function create()
	{
		super.create();

		var cover = new FlxSprite();
		cover.loadGraphic("assets/images/cover-lonely-paddle.png");
		cover.setGraphicSize(120, 80);
		cover.screenCenter();
		cover.y -= 15;
		add(cover);

		var startText = new MimeoText("CLICK to Start", Color.WHITE);
		startText.screenCenter();
		startText.y += 45;
		startText.flicker(0, 0.8);
		add(startText);

		add(new MimeoText(Reg.version, Color.WHITE, 0.6, FlxG.width - 20, FlxG.height - 9));
		add(new MimeoText("Brett Chalupa", Color.WHITE, 0.6, 2, FlxG.height - 9));

		starSound = FlxG.sound.load("assets/sounds/star.ogg");

		FlxG.cameras.bgColor = Color.BLUE;
	}

	override public function update(elapsed:Float)
	{
		if (Input.justPressed(Action.CONFIRM))
		{
			starSound.play(true);
			FlxG.switchState(new GameState());
		}
	}
}
