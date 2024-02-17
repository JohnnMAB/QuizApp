//
//  WelcomeView.swift
//  QuizApp
//
//  Created by Jhonathan Mattos on 17/02/24.
//

import SwiftUI
import CoreData

struct WelcomeView: View {
    //MARK: - Objects
    @Environment(\.dismiss) var dismiss
    @State var txtFieldText: String = ""
    @State var tftFielData: [String] = []
    
    //MARK: - ContentView
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 40) {
                //Title
                Text("Quiz App")
                    .font(.system(size: 65,weight: .heavy, design: .rounded))
                
                //Subtitle
                Text("Está preparado para o desafio?")
                    .font(.system(size: 28, weight: .semibold, design: .monospaced))
                
                //TxtField
                TextField("Como você se chama desafiante?", text: $txtFieldText)
                    .padding()
                    .font(.system(size: 16, weight: .bold, design: .monospaced))
                    .background(Color.gray.opacity(0.5).cornerRadius(12))
                    .frame(width: 350)
                
                //BtnAction
                Button {
                    self.btnAction()
                } label: {
                    Text("Começar agora!")
                        .font(.system(size: 20, weight: .black, design: .rounded))
                        .padding()
                        .foregroundColor(.black)
                        .background(RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .fill(Color(.cyan))
                            .frame(width: 240)
                        )
                    
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .padding(.bottom, 220)
        }
        
    }
    private func btnAction() {
        tftFielData.append(txtFieldText)
        txtFieldText = ""
        print(tftFielData)
//        dismiss()
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
