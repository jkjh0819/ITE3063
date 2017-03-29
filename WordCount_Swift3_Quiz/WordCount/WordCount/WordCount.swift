//
//  WordCount.swift
//  WordCount
//
//  Created by Jihye Jegal on 2017. 3. 23..
//  Copyright © 2017년 CodersHigh. All rights reserved.
//

import Foundation

struct WordCount{
    var words: String
    
    
    func count() -> [String:Int]{
        var wordCount:[String:Int] = [:]
        let wordsLower = words.lowercased().replacingOccurrences(of: "[!&$%^:,]", with: "", options: [.regularExpression])
        let wordSplited = wordsLower.components(separatedBy: " ")
        for word in wordSplited {
            if word == "" {
               continue
            }
            if let count = wordCount[word] {
                wordCount[word] = count + 1
            } else {
                wordCount[word] = 1
            }
        }
        
        return wordCount
    }
    
}
