//
//  Anagram.swift
//  Anagram
//
//  Created by Jihye Jegal on 2017. 3. 30..
//  Copyright © 2017년 CodersHigh. All rights reserved.
//

import Foundation

struct Anagram {
    var word: String
    
    func match(words:[String]) -> [String] {
        var result:[String] = []
        let wordChar = Array(word.lowercased().characters).sorted{$0 < $1}
        for listWord in words{
            let listWord_ = Array(listWord.lowercased().characters).sorted{$0 < $1}
            if Array(listWord_) == Array(wordChar) {
                if word != listWord.lowercased() {
                    result.append(listWord)
                }
            } else {
                continue
            }
        }
        return result
    }
}
