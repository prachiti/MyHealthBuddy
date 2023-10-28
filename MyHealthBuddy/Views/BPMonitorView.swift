//
//  BPMonitorView.swift
//  MyHealthBuddy
//
//  Created by Prachiti Gaikwad on 10/27/23.
//

import SwiftUI

struct BPMonitorView: View {
    
    @StateObject var viewModel = BPMonitorViewModel()
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.pink)
                    .rotationEffect(Angle(degrees: 15))
                VStack {
                    Text("BP Monitor")
                        .font(.system(size: 50))
                        .foregroundColor(Color.white)
                        .bold()
                    
                    Text("Record your BP everyday")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                }
                .padding(.top, 30)
            }
            .frame(width: UIScreen.main.bounds.width * 3,
                   height:300)
            .offset(y: -100)
            
            Spacer()
            
            Form {
                
                TextField("Systolic mmHg", text: $viewModel.systolic)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Diastolic mmHg", text: $viewModel.diastolic)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                DatePicker("Today", selection: $viewModel.date, displayedComponents: [.date])
                
                Button {
                    //Action on button
                    viewModel.record()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.pink)
                        Text("Record")
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

#Preview {
    BPMonitorView()
}
