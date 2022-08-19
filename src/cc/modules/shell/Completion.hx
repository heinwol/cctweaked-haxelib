package cc.modules.shell;

import lua.Table;
import lua.Table.AnyTable;

typedef Shell = AnyTable;

@:luaRequire('cc.shell.completion')
extern class Completion {
	public static function file(shell:Shell, text:String):Table<Int, String>;
	public static function dir(shell:Shell, text:String):Table<Int, String>;
	public static function dirOrFile(shell:Shell, text:String, previous:Table<Int, String>, ?add_space:Bool):Table<Int, String>;
	public static function program(shell:Shell, text:String):Table<Int, String>;
	public static function programWithArgs(shell:Shell, text:String, previous:Table<Int, String>, ?add_space:Bool):Table<Int, String>;
}
