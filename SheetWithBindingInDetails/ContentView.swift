//
//  ContentView.swift
//  SheetWithBindingInDetails
//
//  Created by ramil on 20.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet = false
    
    var body: some View {
        Button(action: {
            self.showSheet.toggle()
        }) {
            Text("Show sheet")
        }
        .sheet(isPresented: $showSheet) {
            SheetView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SheetView: View {
    var body: some View {
        Text("Sheet")
    }
}

