videosource
===========

Processing library to provide a unified interface 
for various video sources:  
(built-in camera, video,
animated gifs and image sequences)

## Note 

The *videosource* library is currently compiled for Processing 2.1.  
(Sourcecode for Processing 1.5.1 is included)

## Usage

All video sources implement the [VideoSource](src/processing-2.1/bitcraftlab/videosource/VideoSource.java) interface

Available sources:

- Camera
- ImageLoop
- OggVideo
- AnimatedGif

See the included [example](examples/video_loops).

## License

This library is released under the GNU General Public License (GPL).

It includes:

- [GifAnimation](http://www.extrapixel.ch/processing/gifAnimation/) library by ExtraPixel (GPL) 
- [PoGG](http://www.activovision.com/pogg/doku.php) by Octavi Estapé (LGPL)

The videos used in the example are for demonstration purposes only,
and come with their own licenses:

- [Muybridge Race Horse](http://en.wikipedia.org/wiki/File:Muybridge_race_horse_animated.gif) (Public Domain)
- [Bugs Bunny Clip](http://sourceforge.net/projects/pogg/files/data/BugsShort.ogg/download) from POGG (Public Domain)
- [Circular Wave Animation](http://commons.wikimedia.org/wiki/File:Blender3D_CircularWaveAnim.gif) by Soylent Green (CC-BY-SA 3.0)

 


