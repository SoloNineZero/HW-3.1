//
//  Animation.swift
//  HW 3.1
//
//  Created by Игорь Солодянкин on 16.03.2023.
//

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        return """
        \(name)
        \(curve)
        \(String(format: "%.02f", force))
        \(String(format: "%.02f", duration))
        \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataStore.shared.animations.randomElement()?.rawValue ?? "pop",
            curve: DataStore.shared.animations.randomElement()?.rawValue ?? "easeInOut",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 1...1.5),
            delay: 0.3
        )
    }
}
