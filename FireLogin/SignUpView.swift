//
//  SignUpView.swift
//  FireLogin
//
//  Created by sdecarli on 5/8/22.
//

import SwiftUI

struct SignUpView: View {
    @EnvironmentObject private var authModel: AuthViewModel
    @State private var emailAddress: String = ""
    @State private var password: String = ""
    
    var body: some View {
        Form {
            Section {
                TextField("Email", text: $emailAddress)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .keyboardType(.emailAddress)
                SecureField("Password", text: $password)
                    .textContentType(.password)
                    .keyboardType(.default)
            }
            Section {
                Button(
                    action: {
                        authModel.signUp(
                            emailAddress: emailAddress,
                            password: password
                        )
                    },
                    label: {
                        Text("Sign Up")
                            .bold()
                    }
                )
            }
        }.navigationTitle("Sign Up")
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
