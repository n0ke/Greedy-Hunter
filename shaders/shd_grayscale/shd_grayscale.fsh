//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float whichShaderToUse ;

void main(){
	vec4 this_colour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord ); 
	float new_colour = max(this_colour.r,max(this_colour.g,this_colour.b));
	gl_FragColor = vec4(new_colour,new_colour,new_colour,1.0);
}
