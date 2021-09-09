/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_black)
draw_line_width(x,y,x+max_value,y,10)

if (value > 2) {
	draw_set_colour(c_red)
	draw_line_width(x+2,y,x+value-2,y,8)
}