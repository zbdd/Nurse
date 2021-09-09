/// @description Insert description here
// You can write your code in this editor
if (follow) {
	x = follow.x + 10
	y = follow.y - 10
}

if(patient) {
	if(!instance_exists(progressbar)) {
		last_hr = string(floor(random_range(50,90)))
		last_bp = string(floor(random_range(100,140))) + "/" + string(floor(random_range(40,80)))
		
		patient = noone
	}
}

if(position_meeting(mouse_x,mouse_y,self)) hoverover = true
else hoverover = false