//
//  main.swift
//  Lesson2
//
//  Created by jaekyung you on 2020/12/16.
//

import Foundation

class Person: CustomStringConvertible {
    
    var name: String
    var age: Int
    
    init(name: String, age:Int) {
        self.name = name
        self.age = age
    }
    
    var description: String {
        return "\(name): \(age)"
    }
}

let person1 = Person(name: "재경", age: 25)
let person2 = Person(name: "한나", age: 30)
let person3 = Person(name: "상민", age: 24)

// breakpoint가 실행되는 조건(condition)을 설정할 수 있음
let people = [person1, person2, person3]
print(people)


// conditional breakpoint
for p in people {
    print(p)
}

// move instruction pointer would be dangerous but sometimes needed
var i = 0
while i < 4 {
    i += 1
    print(i)
}
