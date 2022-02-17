//
//  Joke.swift
//  JK
//
//  Created by Yury Sychyk on 10.02.2022.
//

import Foundation


// MARK: - Joke
struct Joke: Codable {
    let error: Bool
    let category, type, setup, delivery: String
    let flags: Flags
    let id: Int
    let safe: Bool
    let lang: String
}

// MARK: - Flags
struct Flags: Codable {
    let nsfw, religious, political, racist: Bool
    let sexist, explicit: Bool
}
