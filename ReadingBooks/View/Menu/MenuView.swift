import SwiftUI

struct MenuView: View {
    @Binding var showMenu: Bool

    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                NavigationLink(destination: ListView()) {
                    Text("리스트")
                }
                Button("메뉴 항목 2") {}
                Button("메뉴 항목 3") {}
                Button("메뉴 항목 4") {}
                Spacer()
            }
            .padding()
            .navigationBarItems(trailing: Button(action: {
                showMenu = false
            }) {
                Image(systemName: "xmark")
            })
        }
        .edgesIgnoringSafeArea(.all) // 전체 화면 사용
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(showMenu: .constant(true))
    }
}
