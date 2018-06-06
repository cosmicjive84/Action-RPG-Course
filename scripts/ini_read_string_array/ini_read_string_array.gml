///@arg section
///@arg name
///@arg default

var _section = argument0;
var _name = argument1;
var _default = argument2;

var _array = [];

var i = 0;

while ini_key_exists(_section, _name+string(i))
{
	var _value = ini_read_string(_section, _name+string(i), "");
	_array[i++] = _value;
	i++;
}

if array_length_1d(_array) > 0
{
	return _array;
}
else 
{
	return _default;
}