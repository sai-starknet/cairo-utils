use core::num::traits::Pow;

pub trait IntPacking<T> {
    type Packed;
    fn pack(value: T) -> Self::Packed;
    fn unpack(value: Self::Packed) -> T;
}

const I8_NEG_BIT: u8 = 0x80;
const I16_NEG_BIT: u16 = 0x8000;
const I32_NEG_BIT: u32 = 2_u32.pow(31);
const I64_NEG_BIT: u64 = 2_u64.pow(63);
const I128_NEG_BIT: u128 = 2_u128.pow(127);

mod implementation {
    use core::num::traits::{Bounded, Zero};
    pub impl IntPackingImpl<
        T,
        Packed,
        const NEG_BIT: Packed,
        +Add<Packed>,
        +Bounded<Packed>,
        +Bounded<T>,
        +Copy<Packed>,
        +Copy<T>,
        +Drop<Packed>,
        +Drop<T>,
        +Neg<T>,
        +PartialEq<Packed>,
        +PartialEq<T>,
        +PartialOrd<Packed>,
        +PartialOrd<T>,
        +Sub<Packed>,
        +TryInto<Packed, T>,
        +TryInto<T, Packed>,
        +Zero<T>,
    > of super::IntPacking<T> {
        type Packed = Packed;
        fn pack(value: T) -> Self::Packed {
            if value == Bounded::MIN {
                return Bounded::MAX;
            }
            match value < Zero::zero() {
                true => NEG_BIT + (-value).try_into().unwrap(),
                false => value.try_into().unwrap(),
            }
        }

        fn unpack(value: Self::Packed) -> T {
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


impl I8IntPacking = implementation::IntPackingImpl<i8, u8, I8_NEG_BIT>;
impl I16IntPacking = implementation::IntPackingImpl<i16, u16, I16_NEG_BIT>;
impl I32IntPacking = implementation::IntPackingImpl<i32, u32, I32_NEG_BIT>;
impl I64IntPacking = implementation::IntPackingImpl<i64, u64, I64_NEG_BIT>;
impl I128IntPacking = implementation::IntPackingImpl<i128, u128, I128_NEG_BIT>;


#[cfg(test)]
mod tests {
    use core::fmt::Debug;
    use core::num::traits::{Bounded, One, Zero};
    use super::{
        I128IntPacking, I16IntPacking, I32IntPacking, I64IntPacking, I8IntPacking, IntPacking,
    };
    fn test_pack_unpack<T, +IntPacking<T>, +PartialEq<T>, +Debug<T>, +Drop<T>, +Copy<T>>(value: T) {
        let unpacked = IntPacking::unpack(IntPacking::pack(value));
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
