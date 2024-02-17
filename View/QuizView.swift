//
//  QuizView.swift
//  QuizApp
//
//  Created by Jhonathan Mattos on 17/02/24.
//

import SwiftUI

struct QuizView: View {
    //MARK: - Objects
    @State var manager = QuestionsManager()
    
    //MARK: - View
    var body: some View {
        TabView {
            ForEach(manager.mockQuestions, id: \.id) { question in
                QuesrtionsView(question: question)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

    //MARK: - Init 
struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
