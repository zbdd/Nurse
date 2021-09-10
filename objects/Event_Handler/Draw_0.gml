/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_black)
draw_text(room_width-200,5,"Game Event log")
for(var xx=0;xx<ds_list_size(events);xx++) {
	draw_text(room_width-200,20+(xx*20),string(events[| xx].name))	
}