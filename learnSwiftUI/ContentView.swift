import SwiftUI

struct ContentView: View {
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5","Item 6", "Item 7", "Item 8", "Item 9", "Item 10","Item 11", "Item 12", "Item 13", "Item 14", "Item 15"]
    
    var body: some View {
        
        NavigationStack {
            List(items,id: \.self){ item in
                NavigationLink(destination: DetailView(item: item)) {
                                   ListTile(item: item)
                               }
                
            }.navigationTitle("Items List")}
    }
}
struct ListTile: View {
    var item: String

    var body: some View {
        HStack {
            Image(systemName: "leaf")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.red)
            Text(item)
                .font(.title2)
                .padding(.leading, 10)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(8)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
