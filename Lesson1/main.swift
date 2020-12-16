//
//  main.swift
//  Lesson1
//
//  Created by jaekyung you on 2020/12/16.
//

import Foundation

class Bar: NSObject {
    override var description: String {
        return "Bar Description"
    }
    
    override var debugDescription: String {
        return "Debug Bar Description"
    }
}

class Foo: CustomStringConvertible, CustomDebugStringConvertible {
    let name = "Jaekyung"
    let age = 25
//    
    var description: String {
        return "Foo Description"
    }
    /*
    var debugDescription: String {
//        return "Debug Foo Descriptionpo"

        // Complicated
        let className = type(of: self)
        let address = "\(Unmanaged.passUnretained(self as AnyObject).toOpaque())" // extract address
        return "<\(className) : \(address)>"
    }
     */
}

// extension으로 뽑아내기
extension CustomDebugStringConvertible {
    var debugDescription: String {
        
        let className = type(of: self)
        let address = "\(Unmanaged.passUnretained(self as AnyObject).toOpaque())" // extract address
        var description = "<\(className) : \(address), {"
        
        let mirror = Mirror(reflecting: self)
        description += mirror.children.compactMap{ (arg) -> String? in
            let (label, value) = arg
            guard let propertyName = label else { return nil }
            return "\(propertyName) : \(value)"
        }.joined(separator: ", ")

        description += "}>"

        return description
    }
}

let bar = Bar()
let foo = Foo()

print(bar) // description 출력
debugPrint(bar) // debugDescription 출력

print(foo)
debugPrint(foo) // breakpoint를 걸어준 부분부터는 실행이 안 됨



