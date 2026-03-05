//
//  AnswersView.swift
//  fcsLab2Learn
//
//  Created by Paulo Marcelo Santos on 05/03/26.
//

import SwiftUI

struct AnswersView: View {
    var body: some View {
        ScrollView {
            Text("QUESTIONS I HAD")
                .bold()
                .font(.title)
            
            VStack (alignment: .leading) {
                VStack {
                    Text("QUESTION 1")
                        .frame(width: 300, alignment: .center)
                        .bold()
                        .font(.title2)
                    Text("05/03/2026")
                        .frame(width: 300, alignment: .center)
                        .bold()
                        .font(.callout)
                }
                .padding(.bottom)
                Text("Why we often use () at the end of a function or when calling a view?")
                Text("\n     From what I understood, the works as a initializer. So when you want to run a function or a view, you must use (). If you just want to refer a function, for example, you woud use function_name. If you want the function to run, you would use function_name(). I think the same applies to views, not sure.\n\n     For something like .Bold(), we need () because apparently .Bold is a pre-defined function (I think), therefore we need the initializer for it to run. The same applies to Spacer(), but here it's a Struct, which also needs an initializer.")
            }
            .padding()
            .frame(width: 350)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 1)
            )
        }
    }
}

#Preview {
    AnswersView()
}
