/// @description Insert description here
// You can write your code in this editor



global.inBattle = true;
if(global.keys > 0)
{
	NewTextBox("\nFight the boss?", ["Yes","No"], 1);
}
else
{
	NewTextBox("\nYou do not have the key!\nCome back when you have found it!", ["Press space to continue"],0);	
}

o_player.y += 5