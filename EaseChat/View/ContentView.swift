//
//  ContentView.swift
//  EaseChat
//
//  Created by Starvian Wibowo on 6/06/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var session : SessionStore
    
    func getUser(){
        session.listen()
    }
    var body: some View {
        Group{
            if (session.session != nil){
                ChatsView(session: self.session)
            }
            else{
                HomeView()
            }
        }.onAppear(perform: getUser)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(SessionStore())
    }
}
