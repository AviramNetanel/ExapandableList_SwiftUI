//
//  ContentView.swift
//  SwiftUIExpandableList
//
//  Created by Aviram Netanel on 07/03/2023.
//

import SwiftUI

struct QAEntity{
    
    let question : String
    let answer   : String
}

struct ContentView: View {
    
    var body: some View {
        List {
            ForEach(questions.indices) { index in
                ExpandableCell(question: questions[index])
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
