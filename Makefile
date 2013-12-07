# Simple Makefile for Processing Libraries
# (c) bitcraftlab 2013

NAMESPACE=bitcraftlab
NAME=videosource
# VERSION=1.5.1
VERSION=2.1

LIBRARY=library/$(NAME).jar
JARFILE=build/$(NAME)-$(VERSION).jar
SOURCES=src/processing-$(VERSION)/$(NAMESPACE)/$(NAME)/*.java
CLASSES=build/$(NAMESPACE)/$(NAME)/*.class

# pick external library path depending on the processing version
P5_PATH_1=/Applications/Processing/Processing-1.5.1.app/Contents/Resources/Java/
P5_PATH_2=/Applications/Processing/Processing-2.1.app/Contents/Java
# P5_PATH=$(P5_PATH_1)
P5_PATH=$(P5_PATH_2)

# link processing core jars and 3rd party jars
P5_JARS=$(P5_PATH)/core.jar:$(P5_PATH)/modes/java/libraries/video/library/video.jar
EXTRA_JARS=library/pogg.jar:library/gifAnimation.jar

install:	$(LIBRARY)
build:		$(JARFILE)
compile:	$(CLASSES)

$(LIBRARY):	$(JARFILE)
	mkdir -p library
	cp $(JARFILE) $(LIBRARY)

$(JARFILE):	$(CLASSES)
	jar -cf $(JARFILE) -C build $(NAMESPACE)

$(CLASSES):	$(SOURCES)
	mkdir -p build/$(NAMESPACE)
	javac -Xlint -cp "$(P5_JARS):$(EXTRA_JARS)" -d build $(SOURCES)

clean:
	rm -rf build/*

