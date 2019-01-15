dir2ogg
=======
dir2ogg is a GPL'ed python script which converts
mp3, m4a, wma, and wav files into ogg-vorbis format.
It can preserve tags found in the input file where
supported. It was inspired by the perl script mp32ogg,
but supports much more features these days.

Installation
-------------
 (Not so) new in dir2ogg is the install.sh script, which automates installation of
 the script. You should only use this if you have root access to the computer
 you are attempting to install dir2ogg on. If you do not have root access then
 you will have to use dir2ogg from your home directory (perhaps you have a
 /home/username/bin directory?).

 To install simply run:

    sh install.sh

Requirements
-------------
 - Tag preservation: mutagen (https://mutagen.readthedocs.io/en/latest/)
 - M4A Conversion: faad or mplayer (ALAC: alac-decoder)
 - WMA Conversion: mplayer
 - MP3 Conversion: mpg123, mpg321, lame or mplayer
 - FLAC Conversion: no extra software required (ogg123 from vorbis-tools)

Usage
-----
Read the manpage for detailed instructions: `man dir2ogg`, or type `dir2ogg
--help` for brief usage details. The script is extremely simple, so you
shouldn't have any troubles figuring it out.

Dir2ogg can take multiple filenames as arguments, and will Do The Right Thing
based on the file extension. If using the `-d` flag, you may only give directories
as arguments, not filenames and directories

If you wish to convert m4a, wma and/or wav files using `-d` then the `-m`, `-f` and `-w`
flags must be used respectively (FLAC: `--convert-flac`). Wav files are deleted
by default, use `-p` to keep wav files after conversion.

Bugs
----
See the manpage for some known issues.

Please report bugs to <https://github.com/julian-klode/dir2ogg>

License and Disclaimer
----------------------
Copyright (c) 2007-2017 Julian Andres Klode<br/>
Copyright (c) 2003-2006 Darren Kirby

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 33, Boston, MA2111-137  USA

Authors
-------
Current Developer(s):
 - Julian Andres Klode <jak@jak-linux.org>

Inactive Developer(s):
 - Darren Kirby <d@badcomputer.org>

Contributors:
 - Cameron Stone <camerons@cse.unsw.edu.au>
 - Marek Palatinus <marek@palatinus.cz>
