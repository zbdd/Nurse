// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function observations_create(pt){
	obs = instance_create_depth(x,y,0,Observations)
	obs.hr = floor(random_range(40,90))
	obs.sbp = floor(random_range(100,140))
	obs.dbp = floor(random_range(40,80))
	obs.temp = random_range(36,37.4)
	obs.rr = floor(random_range(12,20))
	obs.pain = floor(random_range(0,5))
	
	ds_list_add(pt.obs,obs)
	return obs
}