import SwiftUI

struct CodeView: View {
    @EnvironmentObject var viewmodel: CodeViewModel
            
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text(viewmodel.title)
                Spacer()
                Button(action:
                        viewmodel.run
                ) {
                    Image(systemName: "play")
                        .font(.system(size: 20, weight: .regular))
                        .imageScale(.large)
                        .foregroundColor(.gray).padding(.bottom, 4)
                }
            }
            .padding()
            Divider()
            TextEditor(text: $viewmodel.text)
                    .foregroundColor(Color.black)
                    .font(.custom("SF Mono", size: 15))
        }
    }
}

struct CodeView_Previews: PreviewProvider {
    static let modelData = CodeViewModel()
    
    static var previews: some View {
        CodeView()
            .environmentObject(modelData)
    }
}
