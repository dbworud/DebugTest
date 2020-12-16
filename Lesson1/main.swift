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
    var description: String {
        return "Foo Description"
    }
    
    var debugDescription: String {
        return "Debug Foo Description"
    }
    
}

let bar = Bar()
let foo = Foo()

print(bar) // description 출력
debugPrint(bar) // debugDescription 출력

print(foo)
debugPrint(foo) // breakpoint를 걸어준 부분부터는 실행이 안 됨



