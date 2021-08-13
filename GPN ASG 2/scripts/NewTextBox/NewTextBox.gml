// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NewTextBox(){
	var _obj;
	
	if(instance_exists(o_text)) _obj = o_text_queued; else _obj = o_text;
	with(instance_create_layer(0,0,"Text",_obj))
	{
		
		message = argument[0];
		responses = argument[1];
		responseSelected = 0;
		
		if(argument[2] == 1)
		{
			warp = true;
		}
		if(instance_exists(other)) originInstance = other.id else originInstance = noone;
		

	
		
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