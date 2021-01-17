import SwiftUI

struct RunView: View {
    @EnvironmentObject var viewModel: CodeViewModel
    @Binding var isRunning: Bool
    @State var showLoader = false
    @State var message = ""
    @State var webTitle = ""
    
    // For WebView's forward and backward navigation
    var webViewNavigationBar: some View {
        VStack(spacing: 0) {
            Divider()
            HStack {
                Spacer()
                Button(action: {
                            withAnimation(.easeOut(duration: 0.3)) {
                                self.isRunning.toggle()
                            }
                })
                {
                    Image(systemName: "stop")
                        .font(.system(size: 20, weight: .regular))
                        .imageScale(.large)
                        .foregroundColor(.gray).padding(.bottom, 4)
                }
                Spacer()
            }.frame(height: 45)
            Divider()
        }
    }
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                WebView(url: .localUrl, viewModel: viewModel).overlay (
                    RoundedRectangle(cornerRadius: 4, style: .circular)
                        .stroke(Color.gray, lineWidth: 0.5)
                ).padding(.leading, 20).padding(.trailing, 20)
                
                webViewNavigationBar
            }.onReceive(self.viewModel.showLoader.receive(on: RunLoop.main)) { value in
                self.showLoader = value
            }
            
            // A simple loader that is shown when WebView is loading any page and hides when loading is finished.
            if showLoader {
                Loader()
            }
        }
    }
}

struct RunView_Previews: PreviewProvider {
    static var previews: some View {
        RunView(isRunning: .constant(false))
    }
}

