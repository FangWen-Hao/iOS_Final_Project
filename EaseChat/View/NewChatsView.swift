//
//  NewChatsView.swift
//  EaseChat
//
//  Created by Starvian Wibowo on 6/06/22.
//

import SwiftUI

struct NewChatsView: View {
    @ObservedObject var session : SessionStore
    var body: some View {
        NavigationView{
            List(session.users) { user in
                NavigationLink(destination: ChatLogView(user: user, session: self.session)) {
                    Text(user.name ?? "Unknown")
                }
            }.navigationBarTitle(Text("New Chat"), displayMode: .inline)
        }
    }
}


