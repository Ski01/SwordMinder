//
//  WheelOfProvidenceView.swift
//  SwordMinder
//
//  Created by user226647 on 12/9/22.
//

import SwiftUI

struct WheelOfProvidenceView: View {
    var body: some View {
        VStack{
            ScoreView()
            Spacer()
            WordView()
            Spacer()
            BottomMenu()
        }
    }
}
struct WordView: View {
    var body: some View {
        GeometryReader { geometry in
            let word: String = "Test Phrase" //This is a let constant to remove the warning; will shift to var when needed
            let length: Int = word.count
            LazyVGrid(columns:[GridItem(.fixed(50)),GridItem(.fixed(50)),GridItem(.fixed(50)),GridItem(.fixed(50)),GridItem(.fixed(50)),GridItem(.fixed(50))]){
                Spacer()
                ForEach(0..<length, id: \.self){index in
                    LetterView(letter: word[index])
                        .aspectRatio(2/3, contentMode: .fill)
                }
                Spacer()
            }
        }
    }
}

struct LetterView: View{
    var letter: String
    //will allow for a boolean: "isGuessed" or something of that nature, determining whether or not the letter shows. Think of a "flipped card", almost.
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(letter == " " ? .white:.blue)
                Text(letter).font(.system(size: geometry.size.width))
            }
        }
    }
}

struct ScoreView: View{
    var body: some View{
        let score: Int = 316 //This is a let constant to remove the warning: will shift to var when needed
        let remaining: Int = 9 //This will be the amount of verses remaining in the game. This will be preset per game, to allow for standardization of scoring
        HStack{
            Text("Score: ")
            Text(String(score))
            Spacer()
            Text("Remaining Verses: " + String(remaining))
        }.font(.system(size: 20)).padding(.horizontal).background(Color.blue)
    }
}

struct BottomMenu: View{
    var body: some View{
        HStack{
            Spacer()
            Button("New Game", action:{
                //Start a new game
            }).foregroundColor(.white).padding()
            Spacer()
            Button("Guess", action:{
                //Allow entry of one letter, check if it applies to the phrase
            }).foregroundColor(.white).padding()
            Spacer()
            Button("Complete", action:{
                //Allow for the completion of the verse by typing the entire verse
            }).foregroundColor(.white).padding()
            Spacer()
        }.background(Color.blue)
    }
}

struct WheelOfProvidenceView_Previews: PreviewProvider {
    static var previews: some View {
        WheelOfProvidenceView()
    }
}

