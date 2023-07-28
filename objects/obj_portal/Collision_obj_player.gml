if (point_distance(other.x, other.y, other.xprevious, other.yprevious) > .3) and active{
	if room != rm_store instance_create_layer(x, y, "Instances" ,obj_progress);
	else instance_create_layer(x, y, "Instances" ,obj_exit_store);
}