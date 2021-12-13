//
//  VideoListView.swift
//  Africa
//
//  Created by Austin Burke on 11/24/21.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES
    
    var videos: [Video] = Bundle.main.decode("videos.json")
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                } //: LOOP
            } //: LIST
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
