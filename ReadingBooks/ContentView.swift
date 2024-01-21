import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @State private var showLogin = false

    var body: some View {
        NavigationView {
            VStack {
                // 메인 콘텐츠
                Text("메인 콘텐츠")
            }
            .navigationBarTitle("메인 페이지", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        showMenu = true
                    }) {
                        Image(systemName: "line.horizontal.3")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showLogin = true
                    }) {
                        Image(systemName: "person.circle")
                    }
                }
            }
            .sheet(isPresented: $showMenu) {
                MenuView(showMenu: $showMenu)
            }
            .sheet(isPresented: $showLogin) {
                LoginPage(showLogin: $showLogin)
            }
        }
        .edgesIgnoringSafeArea(.all) // 전체 화면 사용
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
