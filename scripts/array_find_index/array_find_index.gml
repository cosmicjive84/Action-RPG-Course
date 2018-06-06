///@arg value
///@arg array

var _value = argument0;
var _array = argument1;
var _array_length = array_length_1d(_array);
// Look for value
var _i = 0;
repeat _array_length {
	if _value == _array[_i] return _i;
	_i++;
}

return -1;