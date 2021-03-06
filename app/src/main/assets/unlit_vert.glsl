#version 320 es

layout(location = 0) in vec3 _VERT_POS;
layout(location = 2) in vec2 _VERT_UV;

uniform mat4 _MODEL;
uniform mat4 _CAM;
uniform mat4 _NORM;
uniform mat4 _NVM;
uniform mat4 _MVP;

out vec2 _FRAG_UV;

void main() {
    _FRAG_UV = _VERT_UV;
    gl_Position = _MVP * vec4(_VERT_POS, 1.0);
}