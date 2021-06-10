//
//  Message.swift
//  ChatAppWithFirebase
//
//  Created by 髙野拓弥 on 2021/06/09.
//

import Foundation
import Firebase
import FirebaseFirestore
import FirebaseAuth
import FirebaseStorage

class Message {
    
    let name: String
    let message: String
    let uid: String
    let createdAt: Timestamp
    
    var partnerUser: User?
    
    init(dic: [String: Any]) {
        self.name = dic["name"] as? String ?? ""
        self.message = dic["message"] as? String ?? ""
        self.uid = dic["uid"] as? String ?? ""
        self.createdAt = dic["createdAt"] as? Timestamp ?? Timestamp()
    }
    
}