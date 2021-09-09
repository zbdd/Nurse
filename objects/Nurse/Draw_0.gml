/// @description Insert description here
// You can write your code in this editor

draw_self()

draw_set_colour(c_black)
draw_text(20,5,"Event log")
for(var xx=0;xx<ds_list_size(events);xx++) {
	draw_text(20,20+(xx*20),string(events[| xx].name))	
}

var hoverover = instance_position(mouse_x,mouse_y,all)

if(hoverover != noone) {
	if(variable_instance_exists(hoverover,"name")) {
		draw_text(mouse_x,mouse_y-20,hoverover.name)
	}
}

if(mouse_check_button(mb_left) and first_interact) {
	draw_set_colour(c_yellow)
	draw_line_width(first_interact.x,first_interact.y,mouse_x,mouse_y,3)	
}

