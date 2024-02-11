//
//  ContentView.swift
//  swift-janken
//
//  Created by keisuke on 2024/02/12.
//

import SwiftUI

struct ContentView: View {
    
    let hands:Array = [
        ("✊", "グー"),
        ("✌️", "チョキ"),
        ("🖐️", "パァ^^"),
        ("🫶", "LOVE〜！"),
    ]
    @State var hand:String = " "
    @State var hand_info:String = "これからじゃんけんをします"
    
    var body: some View {
        VStack {
            Spacer()
            Text(hand)
                .font(.system(size: 200))
            Spacer()
            Text(hand_info)
                .font(.title3)
                .padding(.bottom)
            Button("じゃんけんをする！") {
                (hand, hand_info) = hands.randomElement()!
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .frame(height: 80)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .background(.pink)
            .foregroundColor(.white)
        }
    }
}

#Preview {
    ContentView()
}
