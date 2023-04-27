/*
 Code  viewd on Stack Overflow thread below:
 https://stackoverflow.com/questions/63745084/how-can-i-make-a-background-color-with-opacity-on-a-sheet-view
 
 Under the Creative Commons license below:
 https://creativecommons.org/licenses/by-sa/3.0/
 
 Credit goes to the users, Mike R and CMash, who responded the question made in the Stack Ovewflow link above.
 */


import Foundation
import SwiftUI

extension View {
    func clearModalBackground()->some View {
        self.modifier(ClearBackgroundViewModifier())
    }
}

struct ClearBackgroundView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        return SuperviewRecolourView()
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}

struct ClearBackgroundViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .background(ClearBackgroundView())
    }
}

class SuperviewRecolourView: UIView {
    override func layoutSubviews() {
        guard let parentView = superview?.superview
        else {
            print("ERROR: Failed to get parent view to make it clear")
            return
        }
        parentView.backgroundColor = .clear
    }
}
