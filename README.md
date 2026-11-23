# swift-energy

Use this package when a value is energy: the capacity to do work. Start from `Energy`, a kind of quantity of swift-quantity, and make an amount with `Energy.joules(_:)`; it is a `Energy.Value<Scalar>`, a `Tagged<Energy, Scalar>`. Force times length is ambiguous with torque, which has the same dimension, so energy owns no `force * length`: make an energy with `Energy.amount(_:)` or `Energy.joules(_:)`, or from a power times a duration (declared in swift-power, which depends on this package).

## Laws

- An amount of energy is stored in joules, the coherent SI unit, and is laid out exactly as its scalar.
- Its dimension is length: 2, mass: 1, time: -2 (exponents of the base dimensions).
- Amounts of energy add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
