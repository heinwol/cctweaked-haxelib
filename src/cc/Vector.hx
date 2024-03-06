package cc;

@:native("vector")
extern class Vector {
	public var x:Int;
	public var y:Int;
	public var z:Int;
	@:native("new") public static function create(x:Int, y:Int, z:Int):Vector;

	public function add(other:Vector):Vector;
	public function sub(other:Vector):Vector;
	public function mul(n:Float):Vector;
	public function div(n:Float):Vector;
	public function unm():Vector;
	public function dot(other:Vector):Float;
	public function cross(other:Vector):Float;
	public function length():Float;
	public function normalize():Vector;
	public function round():Vector;
	@:native("tostring") public function toString():String;
	public function equals(other:Vector):Bool;
}
