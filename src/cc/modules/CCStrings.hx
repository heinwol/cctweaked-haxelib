package cc.modules;

import lua.Table;

@:luaRequire('cc.strings')
extern class CCStrings {
	public static function wrap(text:String, ?width:Int):Table<Int, String>;
	public static function ensure_width(line:String, ?width:Int):String;
}
