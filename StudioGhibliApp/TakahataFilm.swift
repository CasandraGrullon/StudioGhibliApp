//
//  TakahataFilm.swift
//  StudioGhibliApp
//
//  Created by casandra grullon on 11/17/19.
//  Copyright © 2019 casandra grullon. All rights reserved.
//

import Foundation

struct TakahataFilm {
    let name : String
       let releaseDate: String
       let description: String
       let castEnglish: [String: String]
       let castJapanese: [String: String]
    let picture : Int

       static let movie = [
        TakahataFilm(name: "Grave of the Fireflies", releaseDate: "1988", description: "Based on the novel, written by Akiyuki Nosaka, Grave of the Fireflies follows the story of two siblings who are left to fend for themselves in 1945 Japan after their mother passes away. Fun Fact: Grave of the Fireflies is Takahata's first Studio Ghibli film. Like the protaginists of his film, Takahata's family lost their home during the bombings of Japan during World War 2. He experienced a lot of the same harsh treatment as his characters did during the war.", castEnglish: ["Seita":"J. Robert Spencer", "Setsuko":"Rhoda Chrosite", "Seita and Setsuko's mother":"Veronica Taylor", "Aunt": "Amy Jones"], castJapanese: ["Seita":"Tsutomu Tatsumi", "Setsuko": "Ayano Shiraishi", "Seita and Setsuko's mother":"Yoshiko Shinohara", "Aunt":"Akemi Yamaguchi"], picture: 4),
        TakahataFilm(name: "Only Yesterday", releaseDate: "1991", description: "In 1982, Taeko Okajima is 27 years old, unmarried, has lived her whole life in Tokyo and now works at a company there. She decides to take another trip to visit the family in the rural countryside to get away from city life. During her stay, she finds herself increasingly nostalgic and wistful for her childhood self, while simultaneously wrestling with adult issues of career and love.\nFun Fact: To celebrate its 25th anniversary, GKIDS and Universal Pictures released the film for the first time in an English-language format on 26 February 2016", castEnglish: ["Taeko":"Daisy Ridley", "Toshio":"Dev Patel", "Young Takeo":"Alison Fernandez"], castJapanese: ["Takeo":"Miki Imai", "Toshio":"Toshirō Yanagiba", "Young Takeo":"Yōko Honna"], picture: 5)
    ]
}
