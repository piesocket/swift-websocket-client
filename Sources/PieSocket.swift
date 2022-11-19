//
//  PieSocket.swift
//  basic-app
//
//  Created by Anand Singh on 17/11/22.
//
import Foundation

public class PieSocket {
    
    var rooms: [String: Channel]
    var options: PieSocketOptions
    var logger: Logger
    
    public init(pieSocketOptions: PieSocketOptions) {
        
        self.rooms = [String: Channel]()
        self.options = pieSocketOptions
        self.logger = Logger(enabled: options.getEnableLogs())
        
        try! validateOptions()
    }
    
    private func validateOptions() throws{
        
        if options.getClusterId().isEmpty {
            throw PieSocketException.ClusterIdNotSet
        }
        
        if options.getApiKey().isEmpty {
            throw PieSocketException.ApiKeyNotSet
        }
        
    }
    
    public func join(roomId: String) -> Channel {
        if(self.rooms.keys.contains(roomId)){
            logger.log(text: "Returning existing room instance: "+roomId)
            return self.rooms[roomId]!
        }
        
        let room: Channel = Channel(roomId: roomId, options: self.options, logger: self.logger)
        self.rooms[roomId]  = room
        
        return room
    }
    
    public func leave(roomId: String){
        if(self.rooms.keys.contains(roomId)){
            logger.log(text: "DISCONNECT: Closing room connection: "+roomId);
            self.rooms[roomId]?.disconnect()
            self.rooms.removeValue(forKey: roomId)
        }else{
            logger.log(text: "DISCONNECT: Room does not exist: "+roomId)
        }
    }
    
    
    public func getAllRooms() -> [String: Channel]{
        return self.rooms
    }
}
