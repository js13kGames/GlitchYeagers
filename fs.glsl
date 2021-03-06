#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif

uniform float brightness;
uniform float far;
uniform vec4 sky;
uniform vec4 color;

varying mediump float intensity;
varying mediump float z;

void main() {
	float f = z / far;
	gl_FragColor =
		(1.0 - f) * color * (.3 + intensity * .7) * brightness +
		f * sky;
}
