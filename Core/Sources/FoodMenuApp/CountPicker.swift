import SwiftUI

struct CountPicker: View {
    @Binding var count: Int

    var body: some View {
        VStack(spacing: 8) {
            Button(action: decrement) {
                Image(systemName: "minus")
                    .frame(width: 24, height: 24)
            }
            .disabled(count == 1)

            Text("\(count)")
                .multilineTextAlignment(.center)

            Button(action: increment) {
                Image(systemName: "plus")
                    .frame(width: 24, height: 24)
            }
        }
        .padding(8)
        .background(Color(.systemBackground))
        .cornerRadius(24)
    }

    private func decrement() {
        count -= 1
    }

    private func increment() {
        count += 1
    }
}

struct CountPicker_Previews: PreviewProvider {
    struct Wrapper: View {
        @State private var count: Int = 1

        var body: some View {
            CountPicker(count: $count)
                .previewLayout(.sizeThatFits)
        }
    }
    static var previews: some View {
        Wrapper()
    }
}
