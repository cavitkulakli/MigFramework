import SwiftUI

public struct MigFramework {
    
    public struct ShimmerView: View {
        
        @Binding var height: CGFloat
        @Binding var leadingTrallingSize: CGFloat
        @State var show: Bool
        let center = (UIScreen.main.bounds.width / 2) + 110
        
        public init(height: Binding<CGFloat>, leadingTrallingSize: Binding<CGFloat>, show: Bool) {
            self._height = height
            self._leadingTrallingSize = leadingTrallingSize
            self._show = State(initialValue: show)
        }
        
        
        public var body : some View{
            Spacer()
            ZStack{
                Color.black.opacity(0.05)
                    .frame(height: height)
                    .cornerRadius(10)
                
                Color.white
                    .frame(height: height)
                    .cornerRadius(10)
                    .mask(
                        
                        Rectangle()
                            .fill(
                                
                                LinearGradient(gradient: .init(colors: [.clear,Color.white.opacity(0.48),.clear]), startPoint: .top, endPoint: .bottom)
                            )
                            .rotationEffect(.init(degrees: 70))
                            .offset(x: self.show ? center : -center)
                        
                    )
                
                    
            }
            .padding(EdgeInsets(top: 0, leading: 16 + leadingTrallingSize, bottom: 8, trailing: 16 + leadingTrallingSize ))
            .onAppear {
                
                withAnimation(Animation.default.speed(0.30).delay(0).repeatForever(autoreverses: false)){
                    
                    self.show.toggle()
                }
            }
        }
        
        
    }
}
