package;

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
        this.color = 0x000000 | (Std.int(x) % 255) << 16 | (Std.int(x) % 255) << 8 | (Std.int(x) % 255) << 4;
        randomMove();
		super.update(elapsed);
	}

    private function randomMove() {
        var rand:FlxRandom = new FlxRandom();
        var xMove:Int = rand.int(-3,3);
        var yMove:Int = rand.int(-3,3);
        x += xMove;
        y += yMove;
    }
}