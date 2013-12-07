
package bitcraftlab.videosource;

// using gifAnimation library
// http://www.extrapixel.ch/processing/gifAnimation/

import processing.core.*;
import gifAnimation.*;

public class AnimatedGif extends Gif implements VideoSource {
  public AnimatedGif(PApplet app, String filename) {
    super(app, filename);
  }
}





