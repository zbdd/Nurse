/// @description Insert description here
// You can write your code in this editor
draw_self()

draw_set_colour(c_black)
if (hoverover) {
	if(ds_list_size(obs) > 0) {
		var recent = obs[| ds_list_size(obs)-1]
		
		if (recent) {
			if (recent != noone) {
				draw_text(x+20,y-100,"OBS - " + string(floor((current_time-recent.time)/60000)) + " mins ago")
				draw_text(x+20,y-60, "HR: " + string(recent.hr))
				draw_text(x+20,y-40, "BP: " + string(recent.sbp)+"/"+string(recent.dbp))
				draw_text(x+20,y-20, "RR: " + string(recent.rr))
				draw_text(x+20,y, "Temp: " + string(recent.temp) + " deg")
				draw_text(x+20,y+20, "Pain: " + string(recent.pain))
			}
		} else draw_text(x,y-100,"OBS - none recent")
	} else draw_text(x,y-100,"OBS - none taken")
}