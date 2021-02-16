/* CREATE DEBRIS (little round pixel circles)
 * rndAmount -      Defines the amount of randomness the debris can have in its angle.
                    The lower the number, the less random will it be.
                    This does not affect the actual divisions (more on them later),
                    the random amount is only applied after the fact.
 
 * radiusRange -    Defines the radius range across where the debris can spawn.
                    A range of zero (0) will prevent the debris from spawning entirely.
                    The lower the number, the lower the range will be (the more centered it will look).
 
 * particleCount -  Defines how many divisions will be made to the range in where the debris can spawn.
                    The lower the number, the less particles that will be spawned. 
                    Cannot be zero. If it is zero, expect a crash.
 
 * trailDirection - Defines in which angle will the debris trail be rendered
                    The lower the number, the closer to the "centre" it will be.
					Zero acts as if the angle of the trail will not change.
					
 * intensity -      Defines the opacity (and if > 1, also size) of the debris particles.
                    The lower the number, the lower the intensity (opacity) is.
			        Set it to really high for fnuuy effects.

 * liveTime -       Defines the time-to-live of the particles.
                    The lower it is, the longer the particles will live.
			        By default this should be 0.02 (but is entirely customizable).
 */
function createDebris(rndAmount, radiusRange, particleCount, trailDirection, intensity, liveTime)
{
	degreeIncrements = radiusRange / particleCount;
	for(var i = trailDirection; i < radiusRange+trailDirection; i += degreeIncrements)
	{
		var newDebris = instance_create_layer(x,y,"Instances",objDebris);
		newDebris.direction = i - (radiusRange/2) + (random_range(-10,10)*rndAmount);
		if(intensity > 1) {
			newDebris.image_xscale = intensity;
		}
		newDebris.image_alpha = intensity;
		newDebris.decFactor = liveTime;
	}
}