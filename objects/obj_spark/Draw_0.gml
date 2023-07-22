var _dir = point_direction(xprevious, yprevious, x, y);

if outline_width > 0 draw_line_width_color(xprevious + lengthdir_x(-outline_width * .5, _dir), yprevious + lengthdir_y(-outline_width * .5, _dir), x + lengthdir_x(outline_width * .5, _dir), y + lengthdir_y(outline_width * .5, _dir), (speed / w) + 2, $0, $0);
draw_line_width_color(xprevious, yprevious, x, y, (speed / w), c1, c2);
