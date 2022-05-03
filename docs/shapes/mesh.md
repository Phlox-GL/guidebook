# `Mesh`(Experimental)

> currently support of very simple feature from <https://codesandbox.io/s/o432o> .

Draw with geometry and shader:

```cirru
mesh $ {} (:scale 1)
  :position $ [] 300 200
  :geometry $ {}
    :attributes $ []
      {} (:id |aVertexPosition) (:size 2)
        :buffer $ [] -100 -100 100 -100 100 100 -100 100
      {} (:id |aUvs) (:size 2)
        :buffer $ [] 0 0 1 0 1 1 0 1
    :index $ [] 0 1 2 0 3 2
  :shader $ {}
    :vertex-source $ inline-file |demo.vert
    :fragment-source $ inline-file |demo.frag
  :uniforms $ js-object (:uSampler2 sample-texture)
    :time $ :x state
```

- `:uniforms` takes a plain JavaScript object.
- `:vertex-source` and `:fragment-source` take strings of shader code.

### Vetex Shader

A demo:

```glsl
precision mediump float;

attribute vec2 aVertexPosition;
attribute vec2 aUvs;

uniform mat3 translationMatrix;
uniform mat3 projectionMatrix;

varying vec2 vUvs;

void main() {
    vUvs = aUvs;
    gl_Position = vec4((projectionMatrix * translationMatrix * vec3(aVertexPosition, 1.0)).xy, 0.0, 1.0);
    // gl_Position = vec4(1,1,1,0);
}
```

### Fragment Shader

A demo:

```glsl
precision mediump float;

varying vec2 vUvs;
void main() {
    gl_FragColor = vec4(0.1, 0.2, 0.4, 1.0);
}
```
