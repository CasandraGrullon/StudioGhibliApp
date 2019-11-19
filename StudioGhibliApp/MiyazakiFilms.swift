//
//  MiyazakiFilms.swift
//  StudioGhibliApp
//
//  Created by casandra grullon on 11/17/19.
//  Copyright © 2019 casandra grullon. All rights reserved.
//

import UIKit

struct MiyazakiFilm {
    let name : String
    let releaseDate: String
    let description: String
    let castEnglish: [String: String]
    let castJapanese: [String: String]
    let picture: Int

    static let movie = [
        MiyazakiFilm(name: "Nausicaä of the Valley of the Wind", releaseDate: "1984", description: "One thousand years have passed since the Seven Days of Fire, an apocalyptic war that destroyed civilization and created the vast Toxic Jungle, a poisonous forest swarming with giant mutant insects. In the kingdom of the Valley of the Wind, a prophecy predicts a saviour clothed in blue robes, descending onto a golden field. Nausicaä, the princess of the Valley of the Wind, explores the jungle and communicates with its creatures, including the gigantic, trilobite-like armored Ohm. She hopes to understand the jungle and find a way for it and humans to co-exist. \nFun fact: This film was actually created before Studio Ghibli was founded, but it is considered a Ghibli film because without it's success, the studio would not have been founded in the first place!", castEnglish: ["Nausicaä":"Alison Lohman", "Lord Yupa":"Sir Patrick Stewart", "Asbel":"Shia LaBeouf","Kushana":"Uma Thurman"], castJapanese: ["Nausicaä":"Sumi Shimamoto", "Lord Yupa":"Goro Naya", "Asbel":"Yōji Matsuda", "Kashana":"Yoshiko Sakakibara"], picture: 1),
        MiyazakiFilm(name: "Laputa: Castle in the Sky", releaseDate: "1986", description: "An airship carrying Sheeta, a young orphan girl who has been abducted by government agent Muska, is attacked by Captain Dola and her air pirate sons who are in search of Sheeta's small blue crystal pendant. In the resulting struggle, Sheeta falls from the airship but her descent is slowed by a mysterious power within the amulet. She safely lands in a small mining town where she is discovered by a brave young orphan boy named Pazu, who takes her into his home to recover. Pazu tells her of a mysterious floating island named Laputa which is visible in a picture taken by his father. Later, they are pursued by Dola's pirates, and then by Muska's soldiers. Eventually, the two fall into an abandoned mine, where they encounter the local eccentric Uncle Pomme, who informs them that Sheeta's amulet is made of 'volucite' crystal, a material used to keep Laputa and the other flying cities aloft.\nFun Fact: Miyazaki himself said this was his least favorite work he's created. He said it was because he made the protagonist a man instead of a woman.", castEnglish: ["Pazu":"James Van Der Beek", "Sheeta":"Anna Paquin", "Captain Dola": "Cloris Leachman", "Colonel Muska":"Mark Hamill"], castJapanese: ["Pazu":"Mayumi Tanaka", "Sheeta":"Keiko Yokozawa", "Captain Dola":"Kotoe Hatsui", "Colonel Muska":"Minori Terada"], picture: 2 ),
        MiyazakiFilm(name: "My Neighbor Totoro", releaseDate: "1988", description: "A university professor and his two daughters, Satsuki and Mei, move into an old house to be closer to the hospital where the girls' mother, is recovering from a long-term illness. The girls encounter many spirits - including Totoro, the king of the forest.\n:Fun Fact: Totoro was released along side Takahata's film, Grave of the Fireflies. The films were played in theaters as a double feature since Takahata's film was so dark and unlike other Ghibli films, the studio felt they should present Totoro right after to uplift movie goer's spirits.", castEnglish: ["Satsuki Kusakabe":"Dakota Fanning", "Mei Kusakabe":"Elle Fanning", "Tatsuo Kusakabe": "Tim Daly", "Yasuko Kusakabe": "Lea Salonga", "Totoro": "Frank Welker", "Kanta Ōgaki": "Paul Butcher", "Granny": "Pat Carroll"], castJapanese: ["Satsuki Kusakabe":"Noriko Hidaka", "Mei Kusakabe":"Chika Sakamoto", "Tatsuo Kusakab":"Shigesato Itoi", "Yasuko Kusakabe":"Sumi Shimamoto", "Totoro":"Hitoshi Takagi", "Kanta Ōgaki":"Toshiyuki Amagasa", "Granny":"Tanie Kitabayashi"], picture: 3)
        
    ]
    
}
