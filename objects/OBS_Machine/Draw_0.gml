/// @description Insert description here
// You can write your code in this editor
draw_self()

draw_set_colour(c_black)
if (hoverover) {
	
	if (obs == noone) draw_text(x,y-80,"OBS - none recent")
	else {
		draw_text(x+20,y-100,"OBS - " + string(floor((current_time-obs.time)/60000)) + " mins ago")
		draw_text(x+20,y-60, "HR: " + string(obs.hr))
		draw_text(x+20,y-40, "BP: " + string(obs.sbp)+"/"+string(obs.dbp))
		draw_text(x+20,y-20, "RR: " + string(obs.rr))
		draw_text(x+20,y, "Temp: " + string(obs.temp) + " deg")
		draw_text(x+20,y+20, "Pain: " + string(obs.pain))
	}
}