// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function nurse_equip_item(nurse,item){
	events = nurse.events
	equipped = nurse.equipped
	
	var found = ds_list_find_index(equipped,item)
	var log_text = ""
	
	if(found > -1) {
		log_text = "Unequipped "
		ds_list_delete(equipped,found)
	}
	else {
		log_text = "Equipped "
		ds_list_add(equipped,item)
	}
	
	log_text += item.name
	log_create(log_text,events)
}