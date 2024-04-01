//
//  StandingsTabItemView.swift
//  FootballStats
//
//  Created by Szymon Wnuk on 01/04/2024.
//

import SwiftUI
import XCAFootballDataClient



struct StandingsTabItemView: View {
    @State var selectedCompetition: Competition?
    var body: some View {
        NavigationSplitView {
            List(Competition.defaultCompetitions, id: \.self, selection: $selectedCompetition) {
                Text($0.name)
            } .navigationTitle("⚽️ Standings")
        } detail: {
            if let selectedCompetition {
                StandingsTableView(competition: selectedCompetition)
                    .id(selectedCompetition)
            } else {
                Text("Select a competition")
            }
        }
    }
}

#Preview {
    StandingsTabItemView()
}
