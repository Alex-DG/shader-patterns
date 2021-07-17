uniform float uTime;

varying vec2 vUv;
varying float vUtime;


void main()
{
    float newZ = position.z;
    newZ += (sin(position.y * 8.0 - uTime) * 0.3 * sin(position.x * 8.0 - uTime) * 0.3);

    vec3 newPosition = vec3(
        position.x,
        position.y,
        newZ
    );
    gl_Position = projectionMatrix * modelViewMatrix * vec4(newPosition, 1.0);

    vUv = uv;
    vUtime = uTime;
}