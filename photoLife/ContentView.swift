//
//  ContentView.swift
//  photoLife
//
//  Created by 田岸将勝 on 2021/06/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
                            // VStackで作成したViewを構築
                            VStack {
                                Text("Photo Life")
                                    .font(.largeTitle)
                                    .padding(.leading, 16.0)
                                    .padding(.trailing, 175.0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Spacer()
                                StoryView(stories: stories)
                                Divider()
                                TimelineView(timelines: timelines)
                            }
                        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
