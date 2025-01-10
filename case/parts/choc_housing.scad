include <../case.scad>
include <../base.scad>
include <../config.scad>

min_x = min([for (p = case_profile_points) p[0]]);
min_y = min([for (p = case_profile_points) p[1]]);

choc_board_profile_points = scale2d_multi(
board_profile_points, choc_scale, [min_x, min_y]
);

choc_case_points = scale2d_multi(
case_profile_points, choc_scale, [min_x, min_y]
);

case(
board_points = choc_board_profile_points,
case_points = choc_case_points
);