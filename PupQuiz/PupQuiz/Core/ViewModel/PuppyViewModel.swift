//
//  PuppyViewModel.swift
//  PupQuiz
//
//  Created by lss8 on 27/04/23.
//

import Foundation
import SwiftUI

class PuppyViewModel: ObservableObject {

    @Published var puppies: [Puppy] = []

    init() {
        addPuppy()
    }

    func addPuppy() {
        puppies = albumData
    }

}

let albumData = [
    AlbumData().australianShepperd,
    AlbumData().boxer,
    AlbumData().dachshund,
    AlbumData().frenchBulldog,
    AlbumData().goldenRetriever,
    AlbumData().husky,
    AlbumData().rottweiler,
    AlbumData().samoyed,
    AlbumData().shitzu,
    AlbumData().yorkshire,
]
