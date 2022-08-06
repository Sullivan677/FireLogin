//
//  MainView.swift
//  FireLogin
//
//  Created by sdecarli on 5/8/22.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject private var authModel: AuthViewModel
    
    var body: some View {
        VStack {
            Text("\(authModel.user?.email ?? "")")
        }.toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                Button(
                    action: {
                        authModel.signOut()
                    },
                    label: {
                        Text("Sign Out")
                            .bold()
                    }
                )
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
