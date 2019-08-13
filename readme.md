# glsl-simple-alpha-compositing

Simple alpha compositing function in glsl, as described in the [W3C Editor's draft](https://drafts.fxtf.org/compositing-1/#simplealphacompositing) in Compositing and Blending.

## Install

```sh
npm install glsl-simple-alpha-compositing
```

## Usage

```glsl
#pragma glslify: simpleAlphaCompositing = require(glsl-simple-alpha-compositing);

vec4 source = vec4(1., 0., 0., .5);
vec4 backdrop = vec4(0., 1., 0., .3);

vec3 color = simpleAlphaCompositing(source, backdrop);
```

<img width="500px" src="./image.png">
