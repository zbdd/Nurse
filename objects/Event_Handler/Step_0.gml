/// @description Insert description here
// You can write your code in this editor
if (check) {
	if (check.name == "Handwash") {
		log_create("Checking handwash...",events)
		
		found = false
		if(check.inst) {
			for(var xx=0;xx<ds_list_size(check.inst.events);xx++) {
				var log = check.inst.events[| xx]	
				show_debug_message(string((current_time-log.time)/60000))
				
				if(log.name == "Handwashed" and ((current_time-log.time)/60000 <= 1)) {
					found = true
					log_create("Checking OKAY...",events)	
					break
				} else {
					found = true
					log_create("Checking FAILED...",events)
				}
			}
			
		}
		if (!found) log_create("Checking FAILED...",events)
	}
	check = noone
}