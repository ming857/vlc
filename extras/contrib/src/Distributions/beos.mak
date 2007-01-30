# Beos Rules
ifeq ($(HOST),$(BUILD))
# Native build: we need perl, autoconf, etc first
all: .perl .autoconf .automake .libtool .iconv .intl .freetype .fribidi \
	.a52 .mpeg2 .id3tag .mad .ogg .vorbis .vorbisenc .theora \
	.FLAC .speex .faad .faac .lame .ebml .matroska .ffmpeg .dvdcss \
	.dvdnav .dvbpsi .aclocal .libdca
   #.speex seems
else
# Cross compiling: we already have the Linux tools, only build the
# libraries now
all: .iconv .intl .freetype .fribidi \
	.a52 .mpeg2 .id3tag .mad .ogg .vorbis .vorbisenc .theora \
	.FLAC .faad .faac .lame .twolame .ebml .matroska .ffmpeg .dvdcss \
	.dvdnav .dvbpsi .aclocal .libdca
endif
#.speex
