//
//  TopScorersTabItemView.swift
//  FootballStats
//
//  Created by Szymon Wnuk on 02/04/2024.
//

import SwiftUI
import XCAFootballDataClient

struct TopScorersTabItemView: View {
    @State var selectedCompetition: Competition?
    var body: some View {
        NavigationSplitView {
            List(Competition.defaultCompetitions, id: \.self, selection: $selectedCompetition) {
                Text($0.name)
            } .navigationTitle("⚽️ Scorers")
        } detail: {
            if let selectedCompetition {
                TopScorersTableView(competition: selectedCompetition)
                    .id(selectedCompetition)
            } else {
                Text("Select a competition")
            }
        }
    }
}

#Preview {
    TopScorersTabItemView()
}
