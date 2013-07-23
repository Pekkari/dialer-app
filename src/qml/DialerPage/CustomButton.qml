/*
 * Copyright 2012-2013 Canonical Ltd.
 *
 * This file is part of phone-app.
 *
 * phone-app is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * phone-app is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import Ubuntu.Components 0.1

Button {
    // FIXME: waiting on #1072733
    //iconSource: "../assets/dialer_call.png"
    property string icon
    property int iconWidth
    property int iconHeight

    BorderImage {
        id: shape
        anchors.centerIn: parent
        width: parent.width
        height: parent.height
        source: pressed ? "../assets/dialer_pad_bg_pressed.sci" : "../assets/dialer_pad_bg.sci"
    }

    Image {
        anchors.centerIn: parent
        width: iconWidth
        height: iconHeight
        source: icon
        fillMode: Image.PreserveAspectFit
    }
    color: "transparent"
}
