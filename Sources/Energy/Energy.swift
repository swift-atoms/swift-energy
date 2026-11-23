/// Energy: the capacity to do work, stored in joules.
public enum Energy {}

extension Energy: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: 2, mass: 1, time: -2) }
}

extension Energy {
    /// An amount of energy, its scalar in joules.
    public typealias Value<Scalar> = Tagged<Energy, Scalar>

    /// An amount of energy given in joules.
    @inlinable
    public static func joules<Scalar>(_ scalar: Scalar) -> Value<Scalar> {
        amount(scalar)
    }
}
