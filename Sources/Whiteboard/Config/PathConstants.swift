//
//  PathConstants.swift
//  Whiteboard
//
//  Created by JJAYCHEN on 2020/5/28.
//

import Foundation

let CERT_PATH = "/etc/letsencrypt/live/application.jjaychen.me/fullchain.pem"
let KEY_PATH = "/etc/letsencrypt/live/application.jjaychen.me/privkey.pem"

let PYTHON3_PATH = "/usr/bin/python3"
let TESSERACT_PATH = "/usr/bin/tesseract"
let TEMP_PREXFIX = "\(FileManager.default.currentDirectoryPath)/tmp"

#if os(Linux)
let GETRSA_PATH = TEMP_PREXFIX + "/getRSA.py"
let processLogFilePath = "/var/log/ecnu-service-process.log"
let resultLogFilePath = "/var/log/ecnu-service-result.log"
#else
let processLogFilePath = TEMP_PREXFIX + "/ecnu-service-process.log"
let resultLogFilePath = TEMP_PREXFIX + "/ecnu-service-result.log"
#endif

/// Random file name with time and random Int value.
/// Example: 2020-03-03-01-17-42-5-captacha.png
var CAPTCHA_PATH: String {
    let prefix = TEMP_PREXFIX
    
    let dateformatter = DateFormatter()
    dateformatter.dateFormat = "YYYY-MM-dd-HH-mm-ss"
    let randomSuffic = String(Int.random(in: 0...10))
    let suffix = dateformatter.string(from: Date()) + "-" + randomSuffic + "-captcha.png"
    
    return  prefix + "/" + suffix
}

