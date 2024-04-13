//
//  DetailsView.swift
//  iOSCodeChallenge
//
//  Created by Daniela Ciciliano on 12/04/24.
//


import SwiftUI

struct DetailsView: View {
    @ObservedObject var viewModel = DetailsViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack {
                List {
                    if let coments = viewModel.news {
                    ForEach(news.hits, id: \.objectID) { item in
                        if let urlString = item.storyURL {
                            NavigationLink(destination: NewsDetailView(newsItemURL: urlString)) {
                                Text("\(item.author)")
                    
                    
                    
                    
                    ForEach(viewModel.comentsPosts ?? [], id:\.id) { item in
                        Text(item.id)
                        Text(item.)
                    }
                }
                .navigationTitle("Post Details")
                .onAppear {
                    viewModel.getDetails()
                }
            }
            
        }
    }
}

#Preview {
    TitleListView()
}
