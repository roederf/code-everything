import SwiftUI

struct RunView: View {
    @EnvironmentObject var viewModel: MainViewModel
        
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                WebView(viewModel: viewModel)
                
                Divider()
                
                HStack {
                    Spacer()
                    Button(action: {
                        withAnimation(.easeOut(duration: 0.3)) {
                            viewModel.stop()
                        }
                    }) {
                        Image(systemName: "stop")
                            .font(.system(size: 20, weight: .regular))
                            .imageScale(.large)
                            .foregroundColor(.gray).padding(.bottom, 4)
                    }
                    Spacer()
                }
                .frame(height: 45)
            }
        }
    }
}

struct RunView_Previews: PreviewProvider {
    static let viewModel = MainViewModel()
    static var previews: some View {
        RunView()
            .environmentObject(viewModel)
    }
}

