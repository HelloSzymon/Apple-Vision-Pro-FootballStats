//
//  FootballStatsApp.swift
//  FootballStats
//
//  Created by Szymon Wnuk on 01/04/2024.
//

import SwiftUI


let apiKey = StandingsTableObservable().client

@main
struct FootballStatsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                StandingsTabItemView().tabItem { Label("Standings", systemImage: "table.fill") }
                
               TopScorersTabItemView()
                    .tabItem { Label("Top Scorers", systemImage: "soccerball.inverse") }
            }
        }
    }
}
