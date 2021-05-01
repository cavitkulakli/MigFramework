import SwiftUI

public struct MigFramework {
 
    /**
     Adds a view for shimmering effect
     
     Use this view to append a shimmering view from your existing views as your needed size.
     
     - parameter height: The height of the view you want to add
     - parameter leadingTrallingSize: Want to put from the leading and tralling using for tralling or small shimmering parts in your view. Recommended usage via UIScreen.main.bounds.width for compatibility every device.
     - returns: The view component as shimmering view
     
     # Notes: #
     1. Parameters must be **CGFLOAT** type
     
     # Example #
     ```
     MigFramework.ShimmerView(height: 50, leadingTrallingSize: (UIScreen.main.bounds.width / 5))
     ForEach(0...10,id: \.self){_ in
        MigFramework.ShimmerView(height: 40, leadingTrallingSize: 0)
     }
     ```
     */
    public struct ShimmerView: View {
        
        @State var height: CGFloat
        @State var leadingTrallingSize: CGFloat
        @State private var show = false
        let center = (UIScreen.main.bounds.width / 2) + 110
        
        public init(height: CGFloat, leadingTrallingSize: CGFloat) {
            self.height = height
            self.leadingTrallingSize = leadingTrallingSize
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
