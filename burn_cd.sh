#!/bin/sh
#
# Xbox Linux burning script
#
# (c) Copyright 2002    Edgar Hucek <hostmaster@ed-soft.at>
#                       All Rights Reserved.
#
#                       http://xbox-linux.sourceforge.net
#
#       This program is free software; you can redistribute it and/or
#       modify it under the terms of the GNU General Public License
#       as published by the Free Software Foundation; either version
#       2 of the License, or (at your option) any later version.
#
#       Neither Edgar Hucek nor xbox-linux admit liability nor provide
#       warranty for any of this software. This material is provided
#       "AS-IS" and at no charge.
#
#       (c) Copyright 2002      Edgar Hucek <hostmaster@ed-soft.at>


cdrecord dev=0,0,0 blank=fast -speed=12
cdrecord dev=0,0,0 -dao -speed=12 driveropts=burnproof installer.iso
