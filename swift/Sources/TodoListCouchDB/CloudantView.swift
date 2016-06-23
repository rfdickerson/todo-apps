//
//  CloudantView.swift
//  KituraTodoList
//
//  Created by Robert Dickerson on 6/23/16.
//
//

import Foundation

struct CloudantView {
    
    let name: String
    let map: String?
    let reduce: String?

}

extension CloudantView {
    func toDictionary() -> [String:Valuetype] {
        
        var viewInfo = [String:String]()
        
        if let reduce = reduce {
            viewInfo["reduce"] = reduce
        }
        
        if let map = map {
            viewInfo["map"] = map
        }
        
        var view = [String:Valuetype]()
        view[name] = viewInfo
        
        return view
        
    }
}