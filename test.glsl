precision mediump float;

#pragma glslify: simpleAlphaCompositing = require(./)

bool test_1() {
	vec3 c = simpleAlphaCompositing(vec4(1., 0., 0., 1.), vec4(1., 0., 1., 1.));
	return c == vec3(1., 0., 0.);
}

bool test_2() {
	vec3 c = simpleAlphaCompositing(vec4(1., 0., 0., .5), vec4(1., 0., 1., 1.));
	return c == vec3(1., 0., .5);
}

bool test_3() {
	vec3 c = simpleAlphaCompositing(vec4(1., 0., 0., .5), vec4(1., 0., 1., .3));
	return c == vec3(.65, 0., .15);
}

bool test_4() {
	vec3 c = simpleAlphaCompositing(vec4(1., 1., 1., 0.), vec4(1., 0., 1., 1.));
	return c == vec3(1., 0., 1.);
}

bool test_5() {
	vec3 c = simpleAlphaCompositing(vec4(1., 1., 1., 0.), vec4(.5, 0., .5, 1.));
	return c == vec3(.5, 0., .5);
}

bool test_6() {
	vec3 c = simpleAlphaCompositing(vec4(1., 1., 1., 0.), vec4(.5, 0., .5, .5));
	return c == vec3(.25, 0., .25);
}

bool test_7() {
	vec3 c = simpleAlphaCompositing(vec4(1., 0.5, 0., .4), vec4(.5, 0., 1., .5));
	return c == vec3(.55, .2, .3);
}
