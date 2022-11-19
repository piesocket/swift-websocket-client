//
//  Logger.swift
//  basic-app
//
//  Created by Anand Singh on 18/11/22.
//
import Foundation

public class Logger{
    
    private var enabled: Bool

    public static var LOG_TAG: String = "PIESOCKET-SDK-LOGS"
    public static var ERROR_TAG: String = "PIESOCKET-SDK-LOGS"
    
    
    public init(enabled: Bool){
        self.enabled = enabled;
    }
    
    public func log(text: String){
        if(self.enabled){
            print(Logger.LOG_TAG+": "+text)
        }
    }
    
    public func enableLogs(){
        self.enabled = true
    }

    public func disableLogs(){
        self.enabled = false
    }

}
