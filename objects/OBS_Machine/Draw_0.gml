/// @description Insert description here
// You can write your code in this editor
draw_self()

draw_set_colour(c_black)
if (hoverover) {
	draw_text(x,y,"OBS")
	draw_text(x,y+20,"HR: " + last_hr)
	draw_text(x,y+40, "BP: " + last_bp)
}