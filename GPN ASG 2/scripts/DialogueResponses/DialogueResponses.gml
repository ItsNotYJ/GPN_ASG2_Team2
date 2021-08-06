// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueResponses(){


	x = argument[0];
	
	if(x = 0)
	{
		with(o_warp) other.x = xPosition;
		with(o_warp) other.y = xPosition;
		with(o_warp) room_goto(Stage1);
	}
}