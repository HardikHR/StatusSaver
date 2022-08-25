//
//  DatabaseModel.swift
//  Status Saver
//
//  Created by macOS on 08/03/22.
//

import Foundation

class util:NSObject {
    class func getPath(_ fileName:String)->String {
        let docDir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fileUrl = docDir.appendingPathComponent(fileName)
        print("databse_Path:-\(fileUrl.path)")
        return fileUrl.path
    }

    class func CopyDatabase(_ filename:String){
        let dbpath = getPath("data.db")
        let fileManager = FileManager.default
        
        if !fileManager.fileExists(atPath: dbpath) {
            let bundle = Bundle.main.resourceURL
            let file = bundle?.appendingPathComponent(filename)
            var _:NSError?
            do{
                try fileManager.copyItem(atPath: (file?.path)!, toPath: dbpath)
            }catch let err{
                print(err.localizedDescription)
            }
        }
    }
}
