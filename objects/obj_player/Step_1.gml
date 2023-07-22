weapon.x = x;
weapon.y = y - 8;
weapon.depth = depth - (sign(mouse_y - (y - MID_HEIGHT)) != 0 ? sign(mouse_y - (y - MID_HEIGHT)) : 1);
weapon.image_angle = point_direction(x, y, mouse_x, mouse_y);
weapon.image_yscale = lado;
