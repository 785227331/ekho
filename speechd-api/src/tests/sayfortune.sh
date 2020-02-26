#!/bin/bash

# Copyright (C) 2003-2005 Brailcom, o.p.s
#
# This program is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation; either version 2 of the License, or (at your option) any later
# version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.  See the GNU General Public License for more details (file
# COPYING in the root directory).
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

#  ./sayfortune.sh [topic [rate [pitch]]
#    e.g.:  ./sayfortune.sh
#           ./sayfortune.sh literature 0 -20

printf "!SET SELF PRIORITY TEXT\n!SET SELF RATE $2\n!SET SELF PITCH $3\n!SPEAK \n `fortune $1` \n.\n S3" > fortune-speechd.tmp
./run_test fortune-speechd.tmp
rm fortune-speechd.tmp
