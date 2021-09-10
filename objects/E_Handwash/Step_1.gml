/// @description Insert description here
// You can write your code in this editor
inst = instance_position(x,y,Nurse)
if (!place_meeting(x,y,Nurse) and reset) {
		active = true
} else if(inst and active) {
	active = false
	global.Event_Handler.check = self
}