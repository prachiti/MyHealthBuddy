//
//  BPMonitorViewModel.swift
//  MyHealthBuddy
//
//  Created by Prachiti Gaikwad on 10/27/23.
//

import Foundation
import FirebaseFirestore

class BPMonitorViewModel: ObservableObject {
    @Published var systolic = ""
    @Published var diastolic = ""
    @Published var date = Date()
    @Published var errMessage = ""
    
    init() {
        
    }
    
    func record() {
        guard !systolic.isEmpty, !diastolic.isEmpty else {
            return
        }
        let newItem = BPMonitorItem(systolic:systolic,
                                    diastolic:diastolic,
                                    date:Date().timeIntervalSince1970)
        print("Record Called", systolic, diastolic,date)
        
        let db = Firestore.firestore()
        db.collection("BPMonitor")
            .addDocument(data:["systolic" : newItem.systolic, "diastolic":newItem.diastolic,"date":newItem.date])
    }
}
