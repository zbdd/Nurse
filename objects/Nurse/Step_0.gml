/// @description Insert description here
// You can write your code in this editor

for(var xx=0;xx<ds_list_size(equipped);xx++) {
	equipped[| xx].x = x - 20 + (xx*40)
	equipped[| xx].y = y + 20
}

var event = instance_position(x,y,Event)

if(event != noone) {
	if(event.active) {
		event.active = false
		log_create(event.name,events)
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
				
	var log_text = ""
				
	switch (second_interact.object_index) {
		case OBS_Machine:
			nurse_equip_item(self,second_interact)
		break;
		
		case Hand_Sanitiser:
			dialog_open = progressbar_create(60)
			log_create("Hand sanitised",events)
		break;
		
		case Notes:
			nurse_equip_item(self,second_interact)
		break;
				
	}
	
	first_interact = noone
	second_interact = noone
}

// If you clicked one object and dragged to another
if(first_interact != second_interact and second_interact != noone and first_interact != noone) {
	if(object_is_ancestor(second_interact.object_index,Interact))
		if ((distance_to_object(first_interact) <= first_interact.min_interact_dist) 
			and (distance_to_object(second_interact) <= second_interact.min_interact_dist)) {
				var log_text = ""
				log_text = first_interact.name + " interacts with " + second_interact.name
				log_create(log_text,events)	
	
				if(variable_instance_exists(first_interact,"inst_obj")) {
						first_interact.inst_obj = second_interact
				}
			}
		
	first_interact = noone
	second_interact = noone
}

if (!instance_exists(dialog_open)) {
	
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