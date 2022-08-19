package cc.modules.image;

import cc.Term.TerminalObject;

typedef Image = Dynamic;

@:luaRequire('cc.image.nft')
extern class Nft {
	public static function parse(image:String):Image;
	public static function load(path:String):Null<Image>;
	public static function draw(image:Image, xPos:Int, yPos:Int, ?target:TerminalObject):Void;
}
