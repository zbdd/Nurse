/// @description Insert description here
// You can write your code in this editor

var event = instance_position(x,y,Event)

if(event != noone) {
	if(event.active) {
		event.active = false
		var log = instance_create_depth(x,y,0,Log)
		log.name = event.name
		log.time = string(current_minute) + "/" + string(current_hour)
		
		ds_list_add(events,log)
		log = noone
	}
}

var interact = instance_position(mouse_x,mouse_y,Interact)

if(mouse_check_button_pressed(mb_left)) {
	if(interact != noone)
		if (interact.interactable)
			if (distance_to_object(interact) <= min_interact_dist) 
				first_interact = interact
}

if (mouse_check_button_released(mb_left)) {
	if(interact != noone)
		if (interact.interactable)
			if (distance_to_object(interact) <= min_interact_dist) 
				second_interact = interact
				
	if(second_interact == noone) first_interact = noone
}

// If you just clicked on the one object
if(first_interact == second_interact and second_interact != noone) {
	with (second_interact) {
		alarm[0] = 1 * room_speed
		uses++
	}
				
	var log = instance_create_depth(x,y,0,Log) 
				
	switch (second_interact.object_index) {
		case OBS_Machine:
			with (second_interact) { 
				if (!follow) { log.name = "Collected "; follow = other  }
				else { log.name = "Let go of "; follow = noone  }
			}
		break;
	}
				
	log.name += second_interact.name
	log.time = string(current_minute) + "/" + string(current_hour)
	ds_list_add(events,log)
	log = noone
	
	first_interact = noone
	second_interact = noone
}
// If you clicked one object and dragged to another
if(first_interact != second_interact and second_interact != noone) {
	
}

if (!dialog_open) {
	
	var xx = 0
	var yy = 0
	
	if (keyboard_check(ord("W"))) {
		yy-=move_speed
	}
	if (keyboard_check(ord("A"))) {
		xx-=move_speed
	}
	if (keyboard_check(ord("S"))) {
		yy+=move_speed
	}
	if (keyboard_check(ord("D"))) {
		xx+=move_speed
	}
	
	var inst = ds_list_create() 
	instance_position_list(x+xx,y+yy,all,inst,true)
	
	for(var i=0;i<ds_list_size(inst);i++) {
		if (inst != self.id) {
			if (inst[| i].solid) {
				xx = 0
				yy = 0
				break
			}
		}
	}
	
	ds_list_destroy(inst)
		
	x += xx
	y += yy
	
}