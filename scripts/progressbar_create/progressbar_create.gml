// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function progressbar_create(time){
		bar = instance_create_depth(x,y,0,Progress_Bar)
		bar.time = time
		
		return bar
}