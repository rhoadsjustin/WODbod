////
////  ScrumData.swift
////  WODwatch
////
////  Created by Justin Rhoads on 8/29/21.
////
//
//import Foundation
//
//class InsertUserData: ObservableObject {
//    private static var documentsFolder: URL {
//        do {
//            return try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
//        } catch {
//            fatalError("Can't find documents directory.")
//        }
//    }
//    private static var fileURL: URL {
//        return documentsFolder.appendingPathComponent("userData.data")
//    }
//    @Published var userData: UserData = UserData(firstName: "", lastName: "String", age: "String", weight: "", height: "")
//
//    func load() {
//        DispatchQueue.global(qos: .background).async { [weak self] in
//            guard let data = try? Data(contentsOf: Self.fileURL) else {
//                #if DEBUG
//                DispatchQueue.main.async {
//                    self?.userData = UserData.data
//                }
//                #endif
//                return
//            }
//            guard let usersData = try? JSONDecoder().decode(UserData.self, from: data) else {
//                fatalError("Can't decode saved scrum data.")
//            }
//            DispatchQueue.main.async {
//                self?.userData = usersData
//            }
//
//        }
//    }
//    func save() {
//        DispatchQueue.global(qos: .background).async { [weak self] in
//            guard let userData = self?.userData else { fatalError("Self out of scope") }
//            guard let data = try? JSONEncoder().encode(userData) else { fatalError("Error encoding data") }
//            do {
//                let outfile = Self.fileURL
//                try data.write(to: outfile)
//            } catch {
//                fatalError("Can't write to file")
//            }
//        }
//
//    }
//}
