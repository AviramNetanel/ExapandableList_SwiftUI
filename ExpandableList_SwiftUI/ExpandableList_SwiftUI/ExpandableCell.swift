//
//  ExpandableCell.swift
//  ExpandableList_SwiftUI
//
//  Created by Aviram Netanel on 08/03/2023.
//

import SwiftUI


struct ExpandableCell: View {
    
    let question: QAEntity
    
    @State private var isExpanded = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(question.question)
                .font(.headline)
                .foregroundColor(.primary)
                .padding(.vertical, 8)
                .onTapGesture {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }
            
            if isExpanded {
                Text(question.answer)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 8)
            }
        }
        .padding(.horizontal)
    }
}

