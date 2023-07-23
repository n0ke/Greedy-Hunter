/// @description Setup

viewIndex = 0;

vignette = true;
vignette_color = #000000;

//	Camera
xx = x;
yy = y;
cameraWidth = 0;
cameraHeight = 0;
cameraRoomBorder = 0;
cameraZoom = 1;
cameraDefW = 480;
cameraBounding = true;
cameraLerpSmoothe = .125;
cameraShake = 0;
cameraShakePhase = 0;

//	Window
windowWidth = 0;
windowHeight = 0;
windowReset = true;
function windowAspect() { return windowWidth / windowHeight };
function windowScale() { return windowWidth / cameraDefW };
function windowIsUpdate() {
	var _ = windowReset;
	return (windowHeight != window_get_height()) or (windowWidth != window_get_width()) or _;
}

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