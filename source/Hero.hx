package;

import flixel.FlxG;
import flixel.math.FlxRandom;
import flixel.util.FlxColor;
import flixel.FlxSprite;

class Hero extends FlxSprite
{
	public function new(X:Float = 0, Y:Float = 0) {
        super(X, Y);

        this.makeGraphic(25,50, FlxColor.WHITE);

        super.drawFrame(true);
    }

	override public function update(elapsed:Float):Void
	{
		//Change sprite color based on x coordinate
        this.color = 0x000000 | (Std.int(x) % 255) << 16 | (Std.int(x) % 255) << 8 | (Std.int(x) % 255) << 4;
		//Check keyboard input and move hero accordingly
		if (FlxG.keys.enabled)
		{
			if (FlxG.keys.pressed.LEFT || FlxG.keys.pressed.A)
			{
				x--;
			}
			if (FlxG.keys.pressed.RIGHT || FlxG.keys.pressed.D)
			{
				x++;
			}
			if (FlxG.keys.pressed.UP || FlxG.keys.pressed.W)
			{
				y--;
			}
			if (FlxG.keys.pressed.DOWN || FlxG.keys.pressed.S)
			{
				y++;
			}
		}

		//Wrap hero if it has exceeded the boundaries
		if (x > FlxG.width) {
			x = 0 - width;
		}
		if (y > FlxG.height) {
			y = 0 - height;
		}
		if (x < 0 - width) {
			x = FlxG.width;
		}
		if (y < 0 - height) {
			y = FlxG.height;
		}

		super.update(elapsed);
	}

    private function randomMove() {
        var rand:FlxRandom = new FlxRandom();
        var xMove:Int = rand.int(-10,10);
        var yMove:Int = rand.int(-10,10);
        x += xMove;
        y += yMove;
    }
}