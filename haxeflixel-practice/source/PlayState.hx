package;

import flixel.util.FlxColor;
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

		var greenFormat:FlxTextFormat = new FlxTextFormat(FlxColor.GREEN);

		myText.applyMarkup("$Hello World$",
			[new FlxTextFormatMarkerPair(greenFormat, "$")]);
		add(myText);
	}

	override public function update(elapsed:Float)
	{
		// Check for reaching right and left boundary
		if (myText.x + myText.width > FlxG.width)
		{
			movingRight = false;
		}
		else if (myText.x < 0)
		{
			movingRight = true;
		}

		// Check for reaching top and bottom boundary
		if (myText.y + myText.height > FlxG.height)
		{
			movingDown = false;
		}
		else if (myText.y < 0)
		{
			movingDown = true;
		}

		// Move text left or right
		if (movingRight)
		{
			myText.x += 3;
		}
		else
		{
			myText.x -= 3;
		}

		// Move text up or down
		if (movingDown)
		{
			myText.y += 1;
		}
		else
		{
			myText.y -= 1;
		}

		super.update(elapsed);
	}
}
