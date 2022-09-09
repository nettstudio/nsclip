/*
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
*/

#ifndef NSCLIP_H
#define NSCLIP_H

#include <QObject>
#include <QSystemTrayIcon>

class nsClip : public QObject
{
    Q_OBJECT

public:
    explicit nsClip(QObject *parent = nullptr);

private:
    QSystemTrayIcon *_tray;

private slots:
    void handleSimplifyClipboard();
};

#endif // NSCLIP_H
