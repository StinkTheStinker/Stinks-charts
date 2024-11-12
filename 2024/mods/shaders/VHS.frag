#pragma header
vec2 uv = openfl_TextureCoordv.xy;
vec2 fragCoord = openfl_TextureCoordv*openfl_TextureSize;
vec2 iResolution = openfl_TextureSize;
uniform float iTime;
#define iChannel0 bitmap
#define texture flixel_texture2D
#define fragColor gl_FragColor
#define mainImage main

//YIQ/RGB shit
vec3 rgb2yiq(vec3 c) {
  return vec3(
    (0.2989 * c.x + 0.5959 * c.y + 0.2115 * c.z),
    (0.5870 * c.x - 0.2744 * c.y - 0.5229 * c.z),
    (0.1140 * c.x - 0.3216 * c.y + 0.3114 * c.z)
  );
}

vec3 yiq2rgb(vec3 c) {
  return vec3(
    (1.0 * c.x + 1.0 * c.y + 1.0 * c.z),
    (0.956 * c.x - 0.2720 * c.y - 1.1060 * c.z),
    (0.6210 * c.x - 0.6474 * c.y + 1.7046 * c.z)
  );
}

// Simple hash function to create noise
float hash(vec2 p) {
    return fract(sin(dot(p, vec2(127.1, 311.7))) * 43758.5453123);
}

// Function to return medium grey noise
float greyNoise(vec2 uv) {
    // Scale UV coordinates to control noise frequency
    float scale = 10.0;  // adjust this value to control noise size
    uv *= scale;
    
    // Generate noise value in the range [0, 1]
    float noise = hash(floor(uv));
    
    // Shift noise to be centered around medium grey (0.5)
    return 0.4 + noise * 0.2; // results in noise values in [0.4, 0.6] range
}

vec2 Circle(float Start, float Points, float Point)
{
  float Rad = (3.141592 * 2.0 * (1.0 / Points)) * (Point + Start);
  //return vec2(sin(Rad), cos(Rad));
  return vec2(-(.3 + Rad), cos(Rad));
}

vec3 Blur(vec2 uv, float f, float d) {
  //  d=abs(d);
  float t = (sin(iTime * 5.0 + uv.y * 5.0)) / 10.0;
  float b = 1.0;
  //t=sin(iTime*5.0+f)/10.0;
  t = 0.0;
  vec2 PixelOffset = vec2(d + .0005 * t, 0);

  float Start = 2.0 / 14.0;
  vec2 Scale = 0.66 * 4.0 * 2.0 * PixelOffset.xy;

  vec3 N0 = texture(iChannel0, uv + Circle(Start, 14.0, 0.0) * Scale).rgb;
  vec3 N1 = texture(iChannel0, uv + Circle(Start, 14.0, 1.0) * Scale).rgb;
  vec3 N2 = texture(iChannel0, uv + Circle(Start, 14.0, 2.0) * Scale).rgb;
  vec3 N3 = texture(iChannel0, uv + Circle(Start, 14.0, 3.0) * Scale).rgb;
  vec3 N4 = texture(iChannel0, uv + Circle(Start, 14.0, 4.0) * Scale).rgb;
  vec3 N5 = texture(iChannel0, uv + Circle(Start, 14.0, 5.0) * Scale).rgb;
  vec3 N6 = texture(iChannel0, uv + Circle(Start, 14.0, 6.0) * Scale).rgb;
  vec3 N7 = texture(iChannel0, uv + Circle(Start, 14.0, 7.0) * Scale).rgb;
  vec3 N8 = texture(iChannel0, uv + Circle(Start, 14.0, 8.0) * Scale).rgb;
  vec3 N9 = texture(iChannel0, uv + Circle(Start, 14.0, 9.0) * Scale).rgb;
  vec3 N10 = texture(iChannel0, uv + Circle(Start, 14.0, 10.0) * Scale).rgb;
  vec3 N11 = texture(iChannel0, uv + Circle(Start, 14.0, 11.0) * Scale).rgb;
  vec3 N12 = texture(iChannel0, uv + Circle(Start, 14.0, 12.0) * Scale).rgb;
  vec3 N13 = texture(iChannel0, uv + Circle(Start, 14.0, 13.0) * Scale).rgb;
  vec3 N14 = texture(iChannel0, uv).rgb;

  vec4 clr = texture(iChannel0, uv);
  float W = 1.0 / 15.0;

  clr.rgb =
    (N0 * W) +
    (N1 * W) +
    (N2 * W) +
    (N3 * W) +
    (N4 * W) +
    (N5 * W) +
    (N6 * W) +
    (N7 * W) +
    (N8 * W) +
    (N9 * W) +
    (N10 * W) +
    (N11 * W) +
    (N12 * W) +
    (N13 * W) +
    (N14 * W);

  return vec3(clr.xyz) * b;
}

void mainImage()
{
  // float d = (iResolution.x/500.0)/2.0-.1*iMouse.x/50.0;
  float d = .1 * iMouse.x / 50.0;
  // d=.1-round(mod(iTime/3.0,1.0))*.1;
  vec2 uv = fragCoord.xy / iResolution.xy;

  float s = (texture(iChannel1, fragCoord).r); // - texture(iChannel1,vec2(0.01+uv.y/1000.0,1.0)).r)*2.0;

  float e = min(.30, pow(max(0.0, cos(uv.y * 4.0 + .3) - .75) * (s + 0.5) * 1.0, 3.0)) * 25.0;
  s -= pow(texture(iChannel1, vec2(0.01 + (uv.y * 32.0) / 32.0, 1.0)).r, 1.0);
  uv.x += e * abs(s * 3.0);
  float r = greyNoise(vec2(mod(iTime * 10.0, mod(iTime * 10.0, 256.0) * (1.0 / 256.0)), 0.0)) * (2.0 * s);
  uv.x += abs(r * pow(min(.003, (uv.y - .15)) * 6.0, 2.0));

  d = .051 + abs(sin(s / 4.0));
  float c = max(0.0001, .002 * d);
  vec2 uvo = uv;
  // uv.x+=.1*d;
  fragColor.xyz = Blur(uv, 0.0, c + c * (uv.x));
  float y = rgb2yiq(fragColor.xyz).r;

  uv.x += .01 * d;
  c *= 6.0;
  fragColor.xyz = Blur(uv, .333, c);
  // texture(iChannel0, uv);
  float i = rgb2yiq(fragColor.xyz).g;

  uv.x += .005 * d;

  c *= 2.50;
  fragColor.xyz = Blur(uv, .666, c);
  float q = rgb2yiq(fragColor.xyz).b;

  fragColor.xyz = yiq2rgb(vec3(y, i, q)) - pow(s + e * 2.0, 3.0);
  fragColor.xyz *= smoothstep(1.0, .999, uv.x - .1);

  // fragColor.xyz-=min(0.10,pow(uv.x,3.0))*d;
}
