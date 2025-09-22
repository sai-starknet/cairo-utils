use crate::neg_bits::*;

pub trait IntPacking<T> {
    type Packed;
    fn pack(self: T) -> Self::Packed;
    fn pack_into<S, +Into<Self::Packed, S>>(self: T) -> S {
        Self::pack(self).into()
    }
    fn unpack(value: Self::Packed) -> T;
}

mod implementation {
    use core::num::traits::{Bounded, Zero};
    pub impl IntPackingImpl<
        T,
        P,
        const NEG_BIT: P,
        +Add<P>,
        +Bounded<P>,
        +Bounded<T>,
        +Copy<P>,
        +Copy<T>,
        +Drop<P>,
        +Drop<T>,
        +Neg<T>,
        +PartialEq<P>,
        +PartialEq<T>,
        +PartialOrd<P>,
        +PartialOrd<T>,
        +Sub<P>,
        +TryInto<P, T>,
        +TryInto<T, P>,
        +Zero<T>,
    > of super::IntPacking<T> {
        type Packed = P;
        fn pack(self: T) -> P {
            if self == Bounded::MIN {
                return Bounded::MAX;
            }
            match self < Zero::zero() {
                true => NEG_BIT + (-self).try_into().unwrap(),
                false => self.try_into().unwrap(),
            }
        }

        fn unpack(value: P) -> T {
            if value == Bounded::MAX {
                return Bounded::MIN;
            }
            match value < NEG_BIT {
                true => value.try_into().unwrap(),
                false => -((value - NEG_BIT).try_into().unwrap()),
            }
        }
    }
}


pub impl I8IntPacking = implementation::IntPackingImpl<i8, u8, I8_NEG_BIT>;
pub impl I16IntPacking = implementation::IntPackingImpl<i16, u16, I16_NEG_BIT>;
pub impl I32IntPacking = implementation::IntPackingImpl<i32, u32, I32_NEG_BIT>;
pub impl I64IntPacking = implementation::IntPackingImpl<i64, u64, I64_NEG_BIT>;
pub impl I128IntPacking = implementation::IntPackingImpl<i128, u128, I128_NEG_BIT>;


#[cfg(test)]
mod tests {
    use core::fmt::Debug;
    use core::num::traits::{Bounded, One, Zero};
    use super::IntPacking;

    fn test_pack_unpack<T, +IntPacking<T>, +PartialEq<T>, +Debug<T>, +Drop<T>, +Copy<T>>(value: T) {
        let unpacked = IntPacking::unpack(value.pack());
        assert_eq!(value, unpacked);
    }

    fn tests_pack_unpack<
        T,
        +Bounded<T>,
        +Copy<T>,
        +Debug<T>,
        +Drop<T>,
        +IntPacking<T>,
        +Neg<T>,
        +One<T>,
        +PartialEq<T>,
        +Zero<T>,
    >() {
        test_pack_unpack::<T>(Zero::zero());
        test_pack_unpack::<T>(One::one());
        test_pack_unpack::<T>(-One::one());
        test_pack_unpack::<T>(Bounded::MIN);
        test_pack_unpack::<T>(Bounded::MAX);
    }

    #[test]
    fn test_i8_packing() {
        tests_pack_unpack::<i8>();
    }

    #[test]
    fn test_i16_packing() {
        tests_pack_unpack::<i16>();
    }
    #[test]
    fn test_i32_packing() {
        tests_pack_unpack::<i32>();
    }
    #[test]
    fn test_i64_packing() {
        tests_pack_unpack::<i64>();
    }
    #[test]
    fn test_i128_packing() {
        tests_pack_unpack::<i128>();
    }
}
