//
//  main.swift
//  Optionals
//
//  Created by Shweta on 1/30/26.
//

//let myOptional: String?
//String data type totalluy different from String?

//myOptional = nil

//let text: String = myOptional //this wont work, it shuld be a actual string

//1.FORCE UNWRAPPING optional! - but we have to think hard that it wont ever be nil -> least safe way

//let text: String = myOptional!
//but if it was nil?? myOptional = nil -> we get a runtime crash on the line where we are force unwrapping the optional

//2.CHECK FOR NIL AND THEN FORCE UNWRAP ONLY WHEN IT IS NOT NIL - SAFER WAY AND SO COMMON SO THERE IS FUNCTIONALITY BUILT FOR IT

//if myOptional != nil{
//    let text: String = myOptional!
//}else{
//    print("Optional was found to be nil")
//}

//problems - wordy, even thouht we know it is safe, we still need to use ! to force unwrap
//3.COMMON - OPTIONAL BINDING

//if let safeOptional = myOptional{ //safeoptional is String but myOptional is String?
//    let text: String = safeOptional
//    print(safeOptional)
//}else{
//    print("Optional was found to be nil")
//}

//so this skips it when it is nil. IF we want to give a DEFAULT value to it when it is nil then we can use the nil coalescing operator
//4.NIL COALESCING OPERATOR optional ?? defaultValue
//let text: String = myOptional ?? "I am the default value"
//print(text)
//5.OPTIONAL CHAINING FOR STRUCTS WHICH ARE OPTIONAL
struct MyOptional{
    var property = 123
    func method(){
        print("I am the structs method")
    }
}

let myOptional: MyOptional?

myOptional = MyOptional()

print(myOptional?.property)//! dangerous so use ?
//even though property is string the struct is optional - do same with method

