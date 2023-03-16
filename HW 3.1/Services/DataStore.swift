//
//  DataStore.swift
//  HW 3.1
//
//  Created by Игорь Солодянкин on 16.03.2023.
//

import SpringAnimation

class DataStore {
    static let shared = DataStore()

    let animations = AnimationPreset.allCases
    let curve = AnimationCurve.allCases
    
    private init() {}
}
