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

pub fn poseidon_hash_single<T, +Into<T, felt252>, +Drop<T>>(value: T) -> felt252 {
    let (r, _, _) = hades_permutation(value.into(), 1, 0);
    r
}

pub fn poseidon_hash_two<T, S, +Into<T, felt252>, +Into<S, felt252>, +Drop<S>>(
    value_1: T, value_2: S,
) -> felt252 {
    let (s0, s1, s2) = hades_permutation(value_1.into(), value_2.into(), 0);
    let (r, _, _) = hades_permutation(s0 + 1, s1, s2);
    r
}

pub fn poseidon_hash_three<
    T, S, U, +Into<T, felt252>, +Into<S, felt252>, +Into<U, felt252>, +Drop<S>, +Drop<U>,
>(
    value_1: T, value_2: S, value_3: U,
) -> felt252 {
    let (s0, s1, s2) = hades_permutation(value_1.into(), value_2.into(), 0);
    let (r, _, _) = hades_permutation(s0 + value_3.into(), s1 + 1, s2);
    r
}


#[cfg(test)]
mod tests {
    use core::hash::HashStateTrait;
    use core::poseidon::PoseidonTrait;
    use super::*;

    #[test]
    fn test_poseidon_hash_single() {
        let value = 'salt';
        let result = poseidon_hash_single(value);
        let expected_result = poseidon_hash_span([value].span());
        let other_expected_result = PoseidonTrait::new().update(value).finalize();
        assert_eq!(result, expected_result);
        assert_eq!(result, other_expected_result);
    }

    #[test]
    fn test_poseidon_hash_two() {
        let value_1 = 'salt';
        let value_2 = 'beef';
        let result = poseidon_hash_two(value_1, value_2);
        let expected_result = poseidon_hash_span([value_1, value_2].span());
        let other_expected_result = PoseidonTrait::new().update(value_1).update(value_2).finalize();
        assert_eq!(result, expected_result);
        assert_eq!(result, other_expected_result);
    }

    #[test]
    fn test_poseidon_hash_three() {
        let value_1 = 'salt';
        let value_2 = 'beef';
        let value_3 = 'hash';
        let result = poseidon_hash_three(value_1, value_2, value_3);
        let expected_result = poseidon_hash_span([value_1, value_2, value_3].span());
        let other_expected_result = PoseidonTrait::new()
            .update(value_1)
            .update(value_2)
            .update(value_3)
            .finalize();
        assert_eq!(result, expected_result);
        assert_eq!(result, other_expected_result);
    }
}
