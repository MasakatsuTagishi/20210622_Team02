//
//  TimelineView.swift
//  photoLife
//
//  Created by 田岸将勝 on 2021/06/20.
//

import SwiftUI

import SwiftUI

struct Timeline {
    let id: Int
    let name: String
    let image: String
    let post: String
    let post_image: String
}

let timelines: [Timeline] = [
    Timeline(id: 0, name: "宮川", image: "宮川", post: "G'sの角", post_image: "3"),
    Timeline(id: 1, name: "石橋", image: "石橋", post: "行き道に撮った朝倉街道駅", post_image: "7"),
    Timeline(id: 2, name: "田岸", image: "田岸", post: "室外機の奥", post_image: "15"),
    Timeline(id: 3, name: "少年A", image: "少年A", post: "行き道に撮った角", post_image: "6"),
    Timeline(id: 4, name: "少女B", image: "少女B", post: "家の中覗かないで", post_image: "5")
]

struct TimelineView: View {
    let timelines: [Timeline]

    var body: some View {
        VStack() {
            ForEach(self.timelines, id: \.id) { (timeline) in
                VStack(spacing: 0) {
                    HStack {
                        Image(timeline.image)
                            .resizable()
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.white, lineWidth: 4))
                            .frame(width: 50, height: 50, alignment: .leading)
                        Text(timeline.name)
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "list.bullet")
                    }
                        .padding(.horizontal, 5)
                    Divider()
                    Image(timeline.post_image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width, alignment: .center)
                        .clipShape(Rectangle())
                    Divider()
                    Group {
                        Text(timeline.name).fontWeight(.bold) +
                        Text("  ") +
                        Text(timeline.post)
                    }
                        .padding(.horizontal, 5)
                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                }
            }
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView(timelines: timelines)
    }
}
