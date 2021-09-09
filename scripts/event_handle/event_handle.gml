// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function event_handle(obj,state,event,act_on){
//event_handle(dialog_open,noone,"OBS taken",first_interact)
	if(obj == state) {
		if(event == "OBS taken") {
			act_on.last_hr = "56"
			act_on.last_bp = "120/80"
		}
	}
}