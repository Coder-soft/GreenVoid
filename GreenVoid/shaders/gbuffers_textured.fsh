#version 120
uniform sampler2D texture;
varying vec2 texcoord;

void main() {
    if (texture2D(texture, texcoord).a < 0.1) discard;
    gl_FragData[0] = vec4(0.0, 0.694, 0.251, 1.0);
}
