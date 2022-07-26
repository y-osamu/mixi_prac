//
//  RepoRowView.swift
//  geo_guide
//
//  Created by osamu on 26.07.22.
//

import SwiftUI

struct RepoRow: View {
    
    let repo : Repo
    
    var body: some View {
        HStack{
            Image("GitHubMark")
                .resizable()
                .frame(width: 44, height: 44)
            VStack(alignment:.leading){
                Text(repo.owner.name)
                    .font(.caption)
                Text(repo.owner.name)
                    .font(.body)
                    .fontWeight(.semibold)
            }
        }
    }
}


struct RepoRowView_Previews: PreviewProvider {
    static var previews: some View {
        RepoRow(repo: .mock1)
    }
}
