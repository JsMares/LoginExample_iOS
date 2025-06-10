//
//  LoginView.swift
//  LoginExample_iOS
//
//  Created by Jonathan Soto Mares on 09/06/25.
//

import SwiftUI

struct LoginView : View {
    var body: some View {
    
        ZStack {
            Image("Fondo")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                LoginForm()
            }.ignoresSafeArea()
        }
    }
}

private struct LoginForm : View {
    var body: some View {
        VStack {
            Text("¡HOLA, DE NUEVO!")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(Color.cyan)
                .padding(.vertical)
            
            EmailTextField()
            PasswordTextField()
            LoginButton()
            LoginOptionsDivider()
            LoginOptionsButtons()
            SignupRedirectButton()
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
        .padding(.horizontal)
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
    @State private var showPassword : Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Contraseña")
            
            if (showPassword) {
                TextField("Ingresa tu contraseña", text: $password)
                    .padding()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )
            } else {
                SecureField("Ingresa tu contraseña", text: $password)
                    .padding()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )
            }
            
            ShowPasswordToggle(show: $showPassword)
            
            
        }.padding(.top)
    }
}

private struct ShowPasswordToggle : View {
    
    @Binding var show : Bool
    
    var body: some View {
        HStack {
            Toggle(isOn: $show) {
                Text("Mostrar contraseña")
            }
        }.padding([.top], 10)
    }
}
/*Toggle("Acepto los términos y condiciones", isOn: $isChecked)
 .toggleStyle(CheckboxToggleStyle())*/

private struct LoginButton : View {
    var body: some View {
        Button(action: {
            
        }) {
            Text("INICIAR SESION")
                .foregroundStyle(Color.white)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.cyan)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(.vertical)
    }
}

private struct LoginOptionsDivider : View {
    var body: some View {
        HStack {
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(Color.gray)
                .layoutPriority(0)
            Text("INICIAR SESION CON")
                .font(.subheadline)
                .layoutPriority(1)
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(Color.gray)
                .layoutPriority(0)
        }.padding(.vertical)
    }
}

private struct LoginOptionsButtons : View {
    
    var images = ["facebook", "twitter", "google", "apple_icon"]
    
    var body: some View {
        
        HStack(spacing: 25) {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }
        }
        .padding(.vertical)
    }
}

private struct SignupRedirectButton : View {
    var body: some View {
        HStack {
            Text("¿No tienes una cuenta?")
            Text("REGISTRARME")
                .foregroundStyle(Color.blue)
        }.padding(.vertical)
    }
}

#Preview {
    LoginView()
}
