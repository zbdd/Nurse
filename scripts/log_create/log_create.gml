// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function log_create(desc,list){
	var log = instance_create_depth(x,y,0,Log)
	
	log.name = desc
	log.time = current_time
	
	ds_list_add(list,log)
}