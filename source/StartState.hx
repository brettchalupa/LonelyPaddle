package;

import Input;
import Input.Action;
import flixel.FlxG;
import flixel.FlxState;
import flixel.system.FlxSound;

using flixel.util.FlxSpriteUtil;

class StartState extends FlxState
{
	var starSound:FlxSound;

	override public function create() {
		var titleText:MimeoText;
		var startText:MimeoText;

		super.create();

		titleText = new MimeoText("Lonely Paddle", Color.WHITE, 2);
		titleText.screenCenter();
		add(titleText);

		startText = new MimeoText("Press ACTION to Start", Color.WHITE);
		startText.screenCenter();
		startText.y += 20;
		startText.flicker(0, 0.8);
		add(startText);

		starSound = FlxG.sound.load("assets/sounds/star.ogg");

		// TODO:
		// - logo
		// - credit
		// - "chin up kid, pass some time with Lonely Paddle"
		// - controls
		// - settings???
	}

	override public function update(elapsed:Float) {
			if (Input.justPressed(Action.CONFIRM))
			{
				starSound.play(true);
				FlxG.switchState(new GameState());
			}
	}
}
