//
//  PieSocketEvent.swift
//  basic-app
//
//  Created by Anand Singh on 18/11/22.
//
import Foundation

public class PieSocketEvent: Codable{
    
    private var event: String = ""
    private var data: String = ""
    private var meta: String = ""
    
    
    public init(){}
    
    public init(event: String){
        self.event = event
    }
    
    public func getEvent() -> String{
        return self.event
    }

    public func getData() -> String{
        return self.data
    }

    public func getMeta() -> String{
        return self.meta
    }
    
    public func setEvent(event: String){
        self.event = event
    }

    public func setData(data: String){
        self.data = data
    }
    
    public func setMeta(meta: String){
        self.meta = meta
    }

    public func toString() -> String{
        return "{\"event\":\""+self.getEvent()+"\", \"data\":\""+self.getData()+"\", \"meta\":\""+self.getMeta()+"\"}"
    }
    
}
