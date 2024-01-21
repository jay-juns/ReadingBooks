import SwiftUI

struct LoginPage: View {
    @Binding var showLogin: Bool

    var body: some View {
        VStack {
            Text("로그인 페이지입니다.")
            // 로그인 페이지 구현 내용

            Button("메인 페이지로 돌아가기") {
                showLogin = false
            }
        }
    }
}
