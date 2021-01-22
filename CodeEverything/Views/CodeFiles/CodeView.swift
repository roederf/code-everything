import SwiftUI

struct CodeView: View {
    @EnvironmentObject var viewModel: CodeViewModel

    init() {
        UITextView.appearance().backgroundColor = .clear
    }
            
    var body: some View {
        
        VStack(spacing: 0) {
            ZStack {
                HStack {
                    Text(viewModel.title)
                    Spacer()
                    Button(action: {
                        withAnimation(.easeOut(duration: 0.3)) {
                            viewModel.run()
                        }
                    }) {
                        Image(systemName: "play")
                            .font(.system(size: 20, weight: .regular))
                            .imageScale(.large)
                            .foregroundColor(.white)
                            .padding(.bottom, 4)
                    }
                }
                .padding()
            }
            .foregroundColor(Color.white)
            .background(Color(red:0.5,green:0.5,blue:0.5))
            
            Divider()
                
            TextEditor(text: $viewModel.text)
                .foregroundColor(Color(red:0.9, green: 0.9, blue: 0.9))
                .background(Color(red:0.2, green: 0.2, blue: 0.2))
                .font(.custom("Courier New", size: 18))
                .border(Color.black, width: 0)
                .disableAutocorrection(true)
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                .keyboardType(.asciiCapable)
        }
    }
}

struct CodeView_Previews: PreviewProvider {
    static let viewModel = CodeViewModel()
    
    static var previews: some View {
        CodeView()
            .environmentObject(viewModel)
    }
}
