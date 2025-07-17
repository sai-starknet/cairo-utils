/// Extension trait providing convenient serialization/deserialization methods
pub trait SerdeAll<T, +Serde<T>> {
    /// Serializes the value into a span of felt252 elements
    fn serialize_all(self: @T) -> Span<felt252>;

    /// Deserializes the entire span, returning None if deserialization fails
    fn deserialize_all(self: Span<felt252>) -> Option<T>;

    /// Deserializes from a span, panicking if deserialization fails
    fn deserialize_unwrap_all(self: Span<felt252>) -> T;
}

/// Blanket implementation of SerdeAll for all types that implement Serde
impl SerdeAllImpl<T, +Serde<T>> of SerdeAll<T> {
    /// Serializes the value into a span of felt252 elements
    fn serialize_all(self: @T) -> Span<felt252> {
        let mut serialized = ArrayTrait::new();
        Serde::serialize(self, ref serialized);
        serialized.span()
    }

    fn deserialize_all(mut self: Span<felt252>) -> Option<T> {
        Serde::deserialize(ref self)
    }

    /// Deserializes from a span, panicking if deserialization fails
    fn deserialize_unwrap_all(self: Span<felt252>) -> T {
        Self::deserialize_all(self).expect('Failed to deserialize')
    }
}

