//
//  DatabaseHelper.swift
//  Status Saver
//
//  Created by macOS on 08/03/22.
//

import Foundation

var id:Int = 0
var cid:Int = 0
var quote:String = ""

class DataBaseHelper: NSObject {
  
    static let shared = DataBaseHelper()
    var database:FMDatabase? = nil
    class func getInstance()-> DataBaseHelper{
        if shared.database == nil {
            shared.database = FMDatabase(path: util.getPath("data.db"))
        }
        return shared
    }
    
    /*func saveData(_modelinfo:Catagory)-> Bool{
     shared.database?.open()
     let isSave = shared.database?.executeUpdate("INSERT INTO category (_id,name) VALUES (?,?)", withArgumentsIn: [_modelinfo._id, _modelinfo.name])
     shared.database?.close()
     return isSave!
     }*/
    
    func fetch(_modelinfo:quotes? = nil) -> [quotes]{
        DataBaseHelper.shared.database?.open()
        var quot: [quotes]!
        let querySQL = "SELECT * FROM quotes WHERE category_id=7"
        do{
            if let result = try DataBaseHelper.shared.database?.executeQuery(querySQL, values: nil) {
                while result.next(){
                    let quots = quotes(_id: Int(result.int(forColumn: "_id")), category_id: Int(result.int(forColumn: "category_id")), quote: String(result.string(forColumn: "quote")!))
                    id = Int(result.int(forColumn: "_id"))
                    cid = Int(result.int(forColumn: "category_id"))
                    quote = result.string(forColumn: "quote")!
                    
                    if quot == nil {
                        quot = [quotes]()
                    }
                    quot.append(quots)
                }
            }
        }catch {print(error.localizedDescription)}
        DataBaseHelper.shared.database?.close()
        return quot
    }
    
    func loadMovie(withID category_id: Int, completionHandler: (_ movieInfo: quotes?) -> Void) {
        DataBaseHelper.shared.database?.open()
        var movieInfo: quotes!
        let query = "select * from category_id where \(movieInfo.category_id)=?"
        do {
            if let results = try DataBaseHelper.shared.database?.executeQuery(query, values: [category_id]) {
                if results.next() {
                    movieInfo = quotes(_id: Int(results.int(forColumn: "_id")), category_id: Int(results.int(forColumn: "category_id")), quote: results.string(forColumn: "quote")!)
                }
                else {
                    print(DataBaseHelper.shared.database?.lastError() as Any)
                }
            }
        }
        catch {
            print(error.localizedDescription)
        }
        DataBaseHelper.shared.database?.close()
        completionHandler(movieInfo)
    }
}
