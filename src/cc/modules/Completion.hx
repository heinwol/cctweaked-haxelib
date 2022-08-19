package cc.modules;

import lua.Table;

@:luaRequire('cc.completion')
extern class Completion {
	public static function choice(text:String, choices:Table<Int, String>, ?add_space:Bool):Table<Int, String>;
	public static function peripheral(text:String, ?add_space:Bool):Table<Int, String>;
	public static function side(text:String, ?add_space:Bool):Table<Int, String>;
	public static function setting(text:String, ?add_space:Bool):Table<Int, String>;
	public static function command(text:String, ?add_space:Bool):Table<Int, String>;
}
