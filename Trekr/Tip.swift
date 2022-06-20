//
//  Tip.swift
//  Trekr
//
//  Created by Dominic Harris on 20/06/2022.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
