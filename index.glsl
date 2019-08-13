vec3 simpleAlphaCompositing (vec4 source, vec4 backdrop) {
	return source.rgb * source.a + backdrop.rgb * backdrop.a * (1. - source.a);
}

#pragma glslify: export(simpleAlphaCompositing)
