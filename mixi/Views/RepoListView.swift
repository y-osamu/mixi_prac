//
//  ContentView.swift
//  o
//
//  Created by osamu on 24.07.22.
//

import SwiftUI
import MapKit

struct RepoListView: View {
    private let mockRepos: [Repo] = [
        .mock1, .mock2, .mock3, .mock4, .mock5
    ]
    
    var body : some View{
        NavigationView {
            List(mockRepos) {repo in
                NavigationLink(
                    destination: RepoDetailView(repo: repo)) {
                    RepoRow(repo: repo)
                }
            }
            .navigationTitle("Repogitoreis")
        }
    }
}



struct RepoListView_Previews: PreviewProvider {
    static var previews: some View {
        RepoListView()
    }
}


