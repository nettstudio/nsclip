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

#include "nsclip.h"

#include <QGuiApplication>
#include <QClipboard>
#include <QHotkey>
#include <QDebug>

nsClip::nsClip(QObject *parent)
    : QObject{parent}
    , _tray(nullptr)
{
    _tray = new QSystemTrayIcon(this);
    _tray->setIcon( QIcon(":/nsclip.png") );
    _tray->setToolTip("nsClip");
    _tray->show();

    QHotkey *hotkey1 = new QHotkey(QKeySequence("Alt+Meta+C"),
                                   true,
                                   this);
    QObject::connect(hotkey1,
                     &QHotkey::activated,
                     this,
                     &nsClip::handleSimplifyClipboard);
}

void nsClip::handleSimplifyClipboard()
{
    QString text = QGuiApplication::clipboard()->text();
    if ( text.isEmpty() ) { return; }

    qDebug() << "IN" << text;
    qDebug() << "OUT" << text.simplified();

    QGuiApplication::clipboard()->setText( text.simplified() );
}
