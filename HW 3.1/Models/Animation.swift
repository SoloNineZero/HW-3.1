//
//  Animation.swift
//  HW 3.1
//
//  Created by Игорь Солодянкин on 16.03.2023.
//

struct Animation {
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataStore.shared.animations.randomElement()?.rawValue ?? "slideUp",
            curve: DataStore.shared.animations.randomElement()?.rawValue ?? "easeInOut",
            force: Float.random(in: 1...1.5),
            duration: Float.random(in: 1...1.5),
            delay: 0.3
        )
    }
}
