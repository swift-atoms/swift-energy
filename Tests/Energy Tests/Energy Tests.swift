import Energy
import Testing

enum `Energy Tests` {}

extension `Energy Tests` {
    @Suite struct `Energy is a kind of quantity in joules` {
        @Test func `Its dimension is length: 2, mass: 1, time: -2`() {
            #expect(Energy.dimension == Quantity.Dimension(length: 2, mass: 1, time: -2))
        }

        @Test func `An amount given in joules keeps its scalar`() {
            #expect(Energy.joules(2.5).underlying == 2.5)
        }
    }
}
