/// @description Insert description here
// You can write your code in this editor
if(inst_obj) {
	if (inst_obj.object_index == Bed) {
		if(progressbar == noone) progressbar = progressbar_create(60)
		if(!instance_exists(progressbar)) {
			obs = observations_create(inst_obj)

			inst_obj = noone
			progressbar = noone
		}
	}
}

if(position_meeting(mouse_x,mouse_y,self)) hoverover = true
else hoverover = false