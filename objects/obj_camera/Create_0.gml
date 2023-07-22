/// @description Setup

viewIndex = 0;

//	Camera
x = 0;
y = 0;
xx = x;
yy = y;
cameraWidth = 0;
cameraHeight = 0;
cameraRoomBorder = 32;
cameraZoom = 1;
cameraDefW = 360;
cameraBounding = true;
cameraLerpSmoothe = .125;
cameraShake = 0;
cameraShakePhase = 0;

//	Window
windowWidth = 0;
windowHeight = 0;
function windowAspect() { return windowWidth / windowHeight };
function windowScale() { return windowWidth / cameraDefW };
function windowIsUpdate() { return (windowHeight != window_get_height()) or (windowWidth != window_get_width())};

function cameraSetPos(_x, _y){
	x = cameraBounding ? clamp(_x, (cameraWidth * .5) + cameraRoomBorder, (room_width - (cameraWidth * .5)) - cameraRoomBorder) : _x;
	y = cameraBounding ? clamp(_y, (cameraHeight * .5) + cameraRoomBorder, (room_height - (cameraHeight * .5)) - cameraRoomBorder) : _y;
	xx = cameraBounding ? clamp(_x, (cameraWidth * .5) + cameraRoomBorder, (room_width - (cameraWidth * .5)) - cameraRoomBorder) : _x;
	yy = cameraBounding ? clamp(_y, (cameraHeight * .5) + cameraRoomBorder, (room_height - (cameraHeight * .5)) - cameraRoomBorder) : _y;
}
function cameraSetTarget(_x, _y){
	xx = cameraBounding ? clamp(_x, (cameraWidth * .5) + cameraRoomBorder, (room_width - (cameraWidth * .5)) - cameraRoomBorder) : _x;
	yy = cameraBounding ? clamp(_y, (cameraHeight * .5) + cameraRoomBorder, (room_height - (cameraHeight * .5)) - cameraRoomBorder) : _y;
}
