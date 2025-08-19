use core::poseidon::{hades_permutation, poseidon_hash_span};
use crate::SerdeAll;

pub fn poseidon_hash_serde<T, +Serde<T>>(value: @T) -> felt252 {
    poseidon_hash_span(value.serialize_all())
}

pub trait PoseidonTrait<T> {
    fn poseidon_hash(self: @T) -> felt252;
}

pub mod serde {
    pub impl PoseidonSerde<T, +Serde<T>> of super::PoseidonTrait<T> {
        fn poseidon_hash(self: @T) -> felt252 {
            super::poseidon_hash_serde(self)
        }
    }
}

pub fn poseidon_hash_two<T, S, +Into<T, felt252>, +Into<S, felt252>, +Drop<S>>(
    value_1: T, value_2: S,
) -> felt252 {
    let (s0, s1, s2) = hades_permutation(value_1.into(), 0, 0);
    let (s0, s1, s2) = hades_permutation(s0, s1 + value_2.into(), s2);
    let (r, _, _) = hades_permutation(s0 + 1, s1, s2);
    r
}
