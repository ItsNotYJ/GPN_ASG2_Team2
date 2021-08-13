// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueResponses(){


	x = argument[0];
	if(x = 0)
	{
		if(global.inTutorial ==  true)
		{
			
			with(o_warp_tutorial) room_goto(Hub);
			global.inTutorial = false;
		}
		else
		{
			if(global.inBattle)
			{
				with(o_warp_boss) room_goto(BossRoom1);
			}
			else
			{
				global.inBattle = true;
				with(o_warp) room_goto(Stage1);
			}
		}
	}
	
}