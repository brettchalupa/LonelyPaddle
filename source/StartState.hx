package;

import Input;
import Input.Action;
import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.system.FlxSound;

using flixel.util.FlxSpriteUtil;

class StartState extends FlxState
{
	var starSound:FlxSound;

	override public function create() {
		super.create();

		var cover = new FlxSprite();
		cover.loadGraphic("assets/images/cover-lonely-paddle.png");
		cover.setGraphicSize(120, 80);
		cover.screenCenter();
		cover.y -= 15;
		add(cover);

		var startText = new MimeoText("Click to Start", Color.WHITE);
		startText.screenCenter();
		startText.y += 45;
		startText.flicker(0, 0.8);
		add(startText);

		starSound = FlxG.sound.load("assets/sounds/star.ogg");

		FlxG.sound.playMusic("assets/music/driving.ogg", 0.9, true);

		FlxG.cameras.bgColor = Color.BLUE;
	}

	override public function update(elapsed:Float) {
			if (Input.justPressed(Action.CONFIRM))
			{
				starSound.play(true);
				FlxG.switchState(new GameState());
			}
	}
}
