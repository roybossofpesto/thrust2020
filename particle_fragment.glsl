#version 330 core

in vec4 pos;
in vec4 col;
uniform vec4 dotColor;
uniform float radius;

out vec4 gl_FragColor;

void main()
{
  float dotRadius = radius / 3.;
  bool in_dot = pos.x * pos.x + pos.y * pos.y + pos.z * pos.z < dotRadius * dotRadius;
  gl_FragColor = in_dot ? dotColor : col;
}

