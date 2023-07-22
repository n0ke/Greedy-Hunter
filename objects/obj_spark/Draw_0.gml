var _dir = point_direction(xprevious, yprevious, x, y);

draw_line_width_color(xprevious + lengthdir_x(-.5, _dir), yprevious + lengthdir_y(-.5, _dir), x + lengthdir_x(.5, _dir), y + lengthdir_y(.5, _dir), (speed / w) + 2, $0, $0);
draw_line_width_color(xprevious, yprevious, x, y, (speed / w), c1, c2);