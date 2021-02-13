//
//  ContentView.swift
//  Using Api's and JSON - 2
//
//  Created by Федот Михайлов on 12.02.2021.
//

import SwiftUI

struct ContentView: View {
    @State var posts: [Post] = []
    var body: some View {
        NavigationView{
            List(posts){ post in
                VStack{
                Text(post.name).font(.title).fontWeight(.bold)
                Text(post.email).font(.title)
                    Text(post.body)}
            }.onAppear(){
                Api().getPost{ (posts) in
                    self.posts = posts
                }
            }.navigationBarTitle("posts")
        }
    }
}

struct Post: Codable, Identifiable{
    let id = UUID()
    var name: String
    var email: String
    var body: String
}
class Api{
    func getPost(completion: @escaping ([Post]) -> ()){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/comments") else{return}
        URLSession.shared.dataTask(with: url){ (data, _, _) in
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            DispatchQueue.main.async {
                completion(posts)
            }
        }.resume()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
