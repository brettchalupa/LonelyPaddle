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

		var verText = new MimeoText(Reg.version, Color.WHITE, 0.5, FlxG.width - 20, FlxG.height - 8);
		add(verText);

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
