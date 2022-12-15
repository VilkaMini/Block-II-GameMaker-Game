/// @description 

len = array_length(global.instance_array);
for(var i = 0; i < len; i += 1)
{
	instance_destroy(global.instance_array[i]);
	
}


