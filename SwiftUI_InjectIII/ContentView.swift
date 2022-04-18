//
//  ContentView.swift
//  SwiftUI_InjectIII
//
//  Created by Vikash Anand on 17/04/22.
//

import SwiftUI
import Inject

struct ContentView: View {
    
    @ObservedObject private var iO = Inject.observer
    @State private var isShowingDetailView = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                VStack {
                    Spacer()
                    HStack(alignment: .bottom) {
                        Text("Hello, world!")
                            .padding()
                    }
                }
                VStack {
                    Spacer()
                    HStack(alignment: .bottom) {
                        NavigationLink(destination:ContentDetailView(),
                                       isActive: $isShowingDetailView) { EmptyView() }
                        tapMeButton
                    }
                }
            }
        }
        .enableInjection()
    }
    
    private var tapMeButton: some View {
        Button(action: {
            isShowingDetailView = true
        },
               label: {
            Text("Tap Me")
                .foregroundColor(.white)
                .frame(width: 200, height: 40)
                .background(Color.blue)
                .cornerRadius(15)
                .padding()
        })
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
