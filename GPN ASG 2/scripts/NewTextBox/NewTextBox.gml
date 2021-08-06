// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NewTextBox(){
	var _obj;
	
	if(instance_exists(o_text)) _obj = o_text_queued; else _obj = o_text;
	with(instance_create_layer(0,0,"Text",_obj))
	{
		
		message = argument[0];
		warp = argument[1];
		responses = argument[2];
		responseSelected = 0
		if(instance_exists(other)) originInstance = other.id else originInstance = noone;
		if(argument_count > 1) background = argument[1]; else background = 1;
		
	}
	
	with(o_player)
	{
		if(state != PlayerStateLocked)
		{
			lastState = state;	
			state = PlayerStateLocked;
		}
	}
}