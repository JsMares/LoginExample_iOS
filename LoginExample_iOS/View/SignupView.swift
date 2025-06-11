//
//  SignupView.swift
//  LoginExample_iOS
//
//  Created by Jonathan Soto Mares on 08/06/25.
//

import SwiftUI

struct SignupView : View {
    var body: some View {
        
        ZStack {
            Image("Fondo")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                FormSignup()
            }
            .ignoresSafeArea()
        }
        
    }
}

private struct FormSignup : View {
    var body: some View {
    
        VStack {
            Text("REGISTRAR USUARIO")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(Color.cyan)
                .padding(.vertical)
            
            FullNameTextField()
            EmailTextField()
            PasswordTextField()
            SignupButton()
            SignupOptionsDivider()
            SignupOptionsButtons()
            LoginRedirectButton()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .clipShape(
            .rect(
                topLeadingRadius: 30,
                topTrailingRadius: 30
            )
        )
    }
}

private struct FullNameTextField : View {
    
    @State private var name : String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Nombre de usuario")
            
            TextField("Ingresa tu nombre", text: $name)
                .padding()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
        }.padding(.top)
    }
}

private struct EmailTextField : View {
    
    @State private var email : String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Correo electronico")
            
            TextField("Ingresa tu correo electronico", text: $email)
                .padding()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
        }.padding(.top)
    }
}

private struct PasswordTextField : View {
    
    @State private var password : String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Contraseña")
            
            TextField("Ingrese una contraseña", text: $password)
                .padding()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
        }.padding(.top)
    }
}

private struct SignupButton : View {
    var body: some View {
        Button(action: {
            
        }) {
            Text("REGISTRARME")
                .foregroundStyle(Color.white)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.cyan)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(.vertical)
    }
}

private struct SignupOptionsDivider : View {
    var body: some View {
        HStack(spacing: 8) {
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(Color.gray)
                .layoutPriority(0)
            Text("REGISTRARME CON")
                .font(.subheadline)
                .lineLimit(1)
                .layoutPriority(1)
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(Color.gray)
                .layoutPriority(0)
        }.padding(.vertical)
    }
}

private struct SignupOptionsButtons : View {
    
    let images = ["facebook", "twitter", "google", "apple_icon"]
    
    var body: some View {
        HStack(spacing: 25) {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical)
    }
}

private struct LoginRedirectButton : View {
    var body: some View {
        HStack {
            Text("¿Ya tienes una cuenta?")
            
            NavigationLink(destination: LoginView()) {
                Text("INICIAR SESIÓN")
                    .foregroundStyle(Color.blue)
            }
            
        }
        .padding(.vertical)
    }
}

#Preview {
    SignupView()
}
