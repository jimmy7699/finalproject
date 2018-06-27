//
//  DataSructure.swift
//  期末專案
//
//  Created by 邱錦華 on 2018/6/16.
//  Copyright © 2018年 jimmy. All rights reserved.
//

import Foundation
struct Professor {
    var image:String
    var name:String
    var education:String
    var expertise:String
    var researchTopics:String
    var email:String
}

struct Course:Codable {
    var name:String
    var compulsory:String
    var professorName:String
    var weekDay:String
    var time:String
    var classTime: Array<String>
    var content:String
    
    
    static func readCoursesFromFile() ->[Course]?{
        let propertyDecoder = PropertyListDecoder()
        if let data = UserDefaults.standard.data(forKey: "courses"),
            let courses = try? propertyDecoder.decode([Course].self, from: data){
            return courses
        } else {
            return nil
        }
    }
    static func saveToFile(courses:[Course]){
        let propertyEncoder = PropertyListEncoder()
        if let data = try? propertyEncoder.encode(courses){
            UserDefaults.standard.set(data,forKey:"courses")
        }
    }
}
