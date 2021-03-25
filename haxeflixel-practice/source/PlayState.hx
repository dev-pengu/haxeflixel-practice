package;

import flixel.text.FlxText;
import flixel.FlxG;
import flixel.FlxState;

class PlayState extends FlxState
{
	private var myText:FlxText;
	private var movingRight:Bool = true;
	private var movingDown:Bool = true;

	override public function create()
	{
		super.create();

		// Create a new FlxText object and add it to the window
		myText = new FlxText(0, 0, 0, "Hello World", 24);
		myText.x = (FlxG.width / 2) - (myText.width / 2);
		myText.y = (FlxG.height / 2) - (myText.height / 2);
		add(myText);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
