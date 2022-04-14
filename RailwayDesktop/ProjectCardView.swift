//
//  ProjectCardView.swift
//  RailwayDesktop
//
//  Created by Student on 4/13/22.
//

import SwiftUI

struct ProjectCardView: View {
    var project: Project
    @State private var hovered = false
    func statusColor() -> Color {
        if project.status == .success {
            return Color.green
        } else {
            return Color.red
        }
    }
    func statusText() -> String {
        switch project.status {
        case .success:
            return "Succeeded"
        case .failure:
            return "Failed"
        case .crash:
            return "Crashed"
        }
    }
    var body: some View {
        VStack {
            Text(project.name)
                .font(.title)
                .fontWeight(.semibold)
            HStack {
                Circle()
                    .frame(width: 8, height: 8, alignment: .center)
                    .foregroundColor(statusColor())
                Text(statusText())
                    .font(.caption)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.regularMaterial)
                .shadow(radius: hovered ? 2 : 0)
                .animation(.default, value: hovered)
        )
        .onHover { self.hovered = $0 }
    }
}

struct ProjectCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectCardView(project: Project(id: "", name: "hello-world", status: .success))
    }
}
