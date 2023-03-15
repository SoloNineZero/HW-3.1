//
//  DataStore.swift
//  HW 3.1
//
//  Created by Игорь Солодянкин on 16.03.2023.
//

import Foundation
import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let animations = [
        .pop
        .slideLeft
        .slideRight
        .slideDown
        .slideUp
        .squeezeLeft
        .squeezeRight
        .squeezeDown
        .squeezeUp
        .fadeIn
        .fadeOut
        .fadeOutIn
        .fadeInLeft
        .fadeInRight
        .fadeInDown
        .fadeInUp
        .zoomIn
        .zoomOut
        .fall
        .shake
        .flipX
        .flipY
        .morph
        .squeeze
        .flash
        .wobble
        .swing
    ]
}
