#version 330 core

in vec4 pos;
in vec4 col;
uniform vec4 dotColor;
uniform float radius;
uniform int mode;

out vec4 finalColor;

void main()
{
  float dotRadius = radius / 3.;
  bool in_dot = pos.x * pos.x + pos.y * pos.y + pos.z * pos.z < dotRadius * dotRadius;
  finalColor =
         mode == 0 ? in_dot ? dotColor : col :
         mode == 1 ? col :
         dotColor;
}

