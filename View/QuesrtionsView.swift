//
//  QuesrtionsView.swift
//  QuizApp
//
//  Created by Jhonathan Mattos on 17/02/24.
//

import SwiftUI

struct QuesrtionsView: View {
    //MARK: - Objects
    @State var question: Question
    
    //MARK: - View
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(question.title)
                .font(.system(size: 40,weight: .black,design: .monospaced))
                .padding(.bottom, 60)
            
            ForEach(question.options, id:\.self) { option in
                HStack {
                    Button {
                        question.selected = option
                    } label: {
                        if question.selected == option {
                            Circle()
                                .shadow(radius: 3)
                                .frame(width: 25, height: 25)
                        } else {
                            Circle()
                                .stroke()
                                .shadow(radius: 3)
                                .frame(width: 25, height: 25)
                        }
                    }
                    Text(option)
                }
                
            }
        }
        .padding(.horizontal, 50)
        .frame(width: 350, height: 550, alignment: .leading )
        .background(Color(uiColor: .systemGray6))
        .cornerRadius(20)
        .shadow(color: Color(uiColor: .gray), radius: 20)
    }
}

//MARK: -  Init
struct QuesrtionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuesrtionsView(question: Question(id: 0, title: "Question 1", options: ["A","B","C","D"], correct: false) )
    }
}

