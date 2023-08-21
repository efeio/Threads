//
//  ExploreViewModel.swift
//  Threads
//
//  Created by Efe Koç on 18.08.2023.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUser() }
    }
    
    @MainActor
    private func fetchUser() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
