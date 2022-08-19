package cc.modules;

import haxe.Rest;
import lua.Table;

@:luaRequire('cc.expect')
extern class Expect {
	public static function expect<T>(index:Int, value:T, types:Rest<String>):T;
	public static function field(tbl:Table<Dynamic, Dynamic>, index:String, types:Rest<String>):Dynamic;
	public static function range(num:Float, min:Float, max:Float):Float;
}
