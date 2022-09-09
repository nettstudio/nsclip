#
# nsClip - https://github.com/nettstudio/nsclip
#
# Copyright (c) 2022 NettStudio AS <https://nettstudio.no>.
# All rights reserved.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>
#

VERSION= 2022.9.9
TEMPLATE = app

QT += core gui widgets
CONFIG += c++11
SOURCES += main.cpp nsclip.cpp
HEADERS += nsclip.h
RESOURCES += nsclip.qrc

CONFIG(release, debug|release): DEFINES += QT_NO_DEBUG_OUTPUT QT_NO_WARNING_OUTPUT

QMAKE_TARGET_PRODUCT = "nsClip"
QMAKE_TARGET_DESCRIPTION = "nsClip"
QMAKE_TARGET_COPYRIGHT = "NettStudio AS"
QMAKE_TARGET_COMPANY = "NettStudio AS"

win32: RC_ICONS += nsclip.ico

include(hotkey/qhotkey.pri)
