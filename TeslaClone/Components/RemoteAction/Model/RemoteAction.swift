//
//  ActionModel.swift
//  TeslaApp
//
//  Created by Caley Hamilton on 11/2/23.
//

import Foundation

struct RemoteAction: Hashable {
    var icon: String
    var text: String
}

let quickShortcuts: [RemoteAction] = [
    RemoteAction(icon: "bolt.fill", text: "Charging"),
    RemoteAction(icon: "fanblades.fill", text: "Fan On"),
    RemoteAction(icon: "music.note.list", text: "Media Controls"),
    RemoteAction(icon: "bolt.car", text: "Close Charge Port")
]

let recentItems: [RemoteAction] = [
    RemoteAction(icon: "arrow.up.square", text: "Open Trunk"),
    RemoteAction(icon: "fanblades", text: "Fan Off"),
    RemoteAction(icon: "person.fill.viewfinder", text: "Summon")
]
