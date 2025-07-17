use core::num::traits::{One, Zero};

pub impl BoolIntoBinary<T, +Zero<T>, +One<T>> of Into<bool, T> {
    fn into(self: bool) -> T {
        match self {
            true => One::one(),
            false => Zero::zero(),
        }
    }
}

pub impl Felt252IntoBool of Into<felt252, bool> {
    fn into(self: felt252) -> bool {
        self != 0
    }
}

pub impl Felt252TryIntoBool of TryInto<felt252, bool> {
    fn try_into(self: felt252) -> Option<bool> {
        match self {
            0 => Option::Some(false),
            1 => Option::Some(true),
            _ => Option::None,
        }
    }
}
