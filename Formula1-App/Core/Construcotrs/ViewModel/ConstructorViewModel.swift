//
//  ConstructorViewModel.swift
//  Formula1-App
//
//  Created by Brandon on 12/15/23.
//

import Foundation
import SwiftUI

class ConstructorViewModel: ObservableObject {
    @Published var constructorsArray: [Constructor] = [Constructor]()
    private let service: ConstructorService
    
    init(service: ConstructorService) {
        self.service = service
        print("DUBUG: Array VM \(constructorsArray)")
        Task { await fetchAllConstructors(year: 2023) }
    }
    
    /*
     This function does not need to be async throws, only async
     we throw the error from ther service, and this fucntion will catch that error
     we can then display that error to the user thru a published property here
     so when we call this func, we only need to say await
     
    */
    
    @MainActor
    func fetchAllConstructors(year: Int) async {
        do {
            self.constructorsArray = try await service.fetchAllConstructors(year: year )
        } catch {
            print("DEBUG: Show error \(error)")
        }
    }
}
