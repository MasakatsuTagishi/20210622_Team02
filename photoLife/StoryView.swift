//
//  storyView.swift
//  photoLife
//
//  Created by 田岸将勝 on 2021/06/20.
//

import SwiftUI

struct Story {
    let id: Int
    let name: String
    let image: String
}

let stories: [Story] = [
    Story(id: 0, name: "宮川", image: "宮川"),
    Story(id: 1, name: "石橋", image: "石橋"),
    Story(id: 2, name: "田岸", image: "田岸"),
    Story(id: 3, name: "少年A", image: "少年A"),
    Story(id: 4, name: "少女B", image: "少女B")
]

struct StoryView: View {
    let stories: [Story]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack() {
                // 順番にStoryを処理
                ForEach(stories, id: \.id) { (story) in
                    VStack(spacing: 0) {
                        ZStack {
                            Image(story.image)
                                .resizable()
                                .overlay(
                                    // Instagramらしいグラデーション色に!!
                                    Circle().stroke(LinearGradient(gradient: Gradient(colors: [.yellow, .red, .purple]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 5))
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                        }
                        Text(story.name)
                    }
                }
            }
                .padding(.top, 5)
                .padding(.leading, 5)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(stories: stories)
    }
}
