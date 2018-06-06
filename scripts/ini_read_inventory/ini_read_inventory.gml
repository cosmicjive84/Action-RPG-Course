///@arg section
///@arg name
///@arg default

var section = argument0;
var name = argument1;
var _default = argument2;

var _array = [];

var i = 0;

while ini_key_exists(section, name+string(i))
{
	var value = ini_read_string(section, name+string(i), "-4");
	var obj = asset_get_index(value);
	if obj == -1
	{
		obj = noone;
	}
	else 
	{
		obj = singleton(obj);
	}
	_array[i] = obj;
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