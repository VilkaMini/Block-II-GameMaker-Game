/// @description CHecking for instances that are picked up

// Getting length of instance array
len = array_length(global.instance_array);
// Destroy picked up instances
for(var i = 0; i < len; i += 1)
{
	instance_destroy(global.instance_array[i]);
}


