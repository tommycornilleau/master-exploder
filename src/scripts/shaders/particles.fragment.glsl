varying float vInfluence;


uniform sampler2D map;

void main() {
	gl_FragColor = texture2D( map, vec2( gl_PointCoord.x, 1.0 - gl_PointCoord.y ) );
	gl_FragColor = gl_FragColor * vec4( 1., 1., 1., 1. );

	if( vInfluence >= 0.9 ) {
		gl_FragColor = vec4( .0, 1., .0, 1. );
	}

}
