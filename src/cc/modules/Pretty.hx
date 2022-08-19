package cc.modules;

import cc.Colors.Color;
import haxe.Rest;

typedef Doc = Dynamic;

interface PrettyPrintOptions {
	public var function_args:Bool;
	public var function_source:Bool;
}

@:luaRequire('cc.pretty')
extern class Pretty {
	public static var empty:Doc;
	public static var space:Doc;
	public static var line:Doc;
	public static var space_line:Doc;
	public static function text(text:String, ?colour:Color):Doc;
	public static function concat(docs:Rest<Doc>):Doc;
	public static function nest(depth:Int, doc:Doc):Doc;
	public static function group(doc:Doc):Doc;
	public static function write(doc:Doc, ?ribbon_frac:Int):Void;
	public static function print(doc:Doc, ?ribbon_frac:Int):Void;
	public static function render(doc:Doc, ?width:Int, ?ribbon_frac:Int):String;
	public static function pretty(obj:Dynamic, ?options:PrettyPrintOptions):String;
	public static function pretty_print(obj:Dynamic, ?options:PrettyPrintOptions, ?ribbon_frac:Int):Void;
}
