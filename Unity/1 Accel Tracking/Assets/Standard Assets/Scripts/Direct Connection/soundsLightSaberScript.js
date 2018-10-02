// Script to control the sounds associated with the LightSaber
//
// Some sounds are "fire and forget", some can be stopped and interrupted.
// The former are done as an AudioClip, using "PlayClipAtPoint"
// The latter is done with specific Play and Stop of the AudioSource.

var powerUpSound : AudioClip;		// the sound to play when the lightSaber is powered up
var movingAudio : AudioSource;		// the sound to play while moving the lightSaber

public function PlayMovingSound() {
	movingAudio.Play();
}

public function StopMovingSound() {
	movingAudio.Stop();
}

// myVol = 0.0f .. 1.0f
public function SetMovingSoundVolume( myVol : float) {
	movingAudio.volume = myVol;
}

public function PlayPowerUpSound() {
	AudioSource.PlayClipAtPoint(powerUpSound, transform.position);	// fire and forget (works also after destroy)
}
