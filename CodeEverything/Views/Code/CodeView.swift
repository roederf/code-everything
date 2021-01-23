import SwiftUI

struct CodeView: View {
    @EnvironmentObject var viewModel: MainViewModel
    
    var appFunction: AppFunctionModel
    
    init(theFunction: AppFunctionModel) {
        UITextView.appearance().backgroundColor = .clear
        appFunction = theFunction
    }
    
    var appFunctionIndex: Int {
        viewModel.appFunctions.firstIndex(where: {
            $0.id == appFunction.id
        })!
    }
    
    var body: some View {
        VStack(spacing: 0) {
                       
            TextEditor(text: $viewModel.appFunctions[appFunctionIndex].content)
                .foregroundColor(Color(red:0.9, green: 0.9, blue: 0.9))
                .background(Color(red:0.2, green: 0.2, blue: 0.2))
                .font(.custom("Courier New", size: 18))
                .border(Color.black, width: 0)
                .disableAutocorrection(true)
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                .keyboardType(.asciiCapable)
        }
        .navigationBarTitle(appFunction.name)
        .navigationBarItems(
            trailing:
                Button(action: {
                    withAnimation(.easeOut(duration: 0.3)) {
                        viewModel.run()
                    }
                }) {
                    Image(systemName: "play")
                        .font(.system(size: 20, weight: .regular))
                        .imageScale(.large)
                        .foregroundColor(.black)
                        .padding(.bottom, 4)
                }
        )
    }
    
}

struct CodeView_Previews: PreviewProvider {
    static let viewModel = MainViewModel()
    
    static var previews: some View {
        CodeView(theFunction: viewModel.appFunctions[0])
            .environmentObject(viewModel)
    }
}
