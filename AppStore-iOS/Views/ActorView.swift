//
//  ActorView.swift
//  AppStore-iOS
//
//  Created by Mina Shehata on 30/05/25.
//

import SwiftUI
import AppStore

struct ActorView: View {
    
    let account1 = BankAccountClass(balance: 100)
    let account2 = BankAccountClass(balance: 0)
    
    let account3 = BankAccountActor(balance: 100)
    let account4 = BankAccountActor(balance: 0)

    var body: some View {
        NavigationStack {
            // in this not thread safe and may lead to crash
            Button {
                Task {
                    account1.transfer(80, to: account2)
                    print("Task 1 - account 1 \(account1.getBalance()), account 2 \(account2.getBalance())")
                }
                //
                Task {
                    account1.transfer(80, to: account2)
                    print("Task 2 - account 1 \(account1.getBalance()), account 2 \(account2.getBalance())")
                }
            } label: {
                Text("⊕")
                    .font(.title)
            }
            
            // in this thread safe
            Button {
                Task {
                    await account3.transfer(80, to: account4)
                    print("Task 3 - account 3 \(await account3.getBalance()), account 4 \(await account4.getBalance())")
                }
                //
                Task {
                    await account3.transfer(80, to: account4)
                    print("Task 4 - account 3 \(await account3.getBalance()), account 4 \(await account4.getBalance())")
                }
            } label: {
                Text("⊕")
                    .font(.title)
            }


        }
    }
}

#Preview {
    ActorView()
}
