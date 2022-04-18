//
//  ContentDetailView.swift
//  SwiftUI_InjectIII
//
//  Created by Vikash Anand on 17/04/22.
//

import SwiftUI
import Inject

struct ContentDetailView: View {
    
    @ObservedObject private var iO = Inject.observer
    
    var body: some View {
        VStack {
            Text("Detail View...")
                .background(Color.yellow)
        }
    }
}
