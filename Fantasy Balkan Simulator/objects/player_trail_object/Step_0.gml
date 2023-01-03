// Fade out

if (image_alpha > 0) {
	image_alpha -= fadeSpeed;
}
if (image_alpha <= 0) {
	instance_destroy();
}
