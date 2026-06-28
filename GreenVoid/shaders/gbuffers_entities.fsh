#version 120
uniform sampler2D texture;
uniform int entityId;
varying vec2 texcoord;
varying vec4 glcolor;

void main() {
    vec4 texColor = texture2D(texture, texcoord) * glcolor;
    if (texColor.a < 0.1) discard;

    if (entityId == 10000) {
        gl_FragData[0] = texColor;
    } else {
        gl_FragData[0] = vec4(0.0, 0.694, 0.251, 1.0);
    }
}
