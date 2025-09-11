use core::num::traits::{Bounded, Pow};
use core::traits::BitAnd;
use crate::int::{
    I128IntPacking, I16IntPacking, I32IntPacking, I64IntPacking, I8IntPacking, IntPacking,
};

pub const SHIFT_0B_FELT252: felt252 = 1;
pub const SHIFT_1B_FELT252: felt252 = 2_felt252.pow(8);
pub const SHIFT_2B_FELT252: felt252 = 2_felt252.pow(16);
pub const SHIFT_3B_FELT252: felt252 = 2_felt252.pow(24);
pub const SHIFT_4B_FELT252: felt252 = 2_felt252.pow(32);
pub const SHIFT_5B_FELT252: felt252 = 2_felt252.pow(40);
pub const SHIFT_6B_FELT252: felt252 = 2_felt252.pow(48);
pub const SHIFT_7B_FELT252: felt252 = 2_felt252.pow(56);
pub const SHIFT_8B_FELT252: felt252 = 2_felt252.pow(64);
pub const SHIFT_9B_FELT252: felt252 = 2_felt252.pow(72);
pub const SHIFT_10B_FELT252: felt252 = 2_felt252.pow(80);
pub const SHIFT_11B_FELT252: felt252 = 2_felt252.pow(88);
pub const SHIFT_12B_FELT252: felt252 = 2_felt252.pow(96);
pub const SHIFT_13B_FELT252: felt252 = 2_felt252.pow(104);
pub const SHIFT_14B_FELT252: felt252 = 2_felt252.pow(112);
pub const SHIFT_15B_FELT252: felt252 = 2_felt252.pow(120);
pub const SHIFT_16B_FELT252: felt252 = 2_felt252.pow(128);
pub const SHIFT_17B_FELT252: felt252 = 2_felt252.pow(136);
pub const SHIFT_18B_FELT252: felt252 = 2_felt252.pow(144);
pub const SHIFT_19B_FELT252: felt252 = 2_felt252.pow(152);
pub const SHIFT_20B_FELT252: felt252 = 2_felt252.pow(160);
pub const SHIFT_21B_FELT252: felt252 = 2_felt252.pow(168);
pub const SHIFT_22B_FELT252: felt252 = 2_felt252.pow(176);
pub const SHIFT_23B_FELT252: felt252 = 2_felt252.pow(184);
pub const SHIFT_24B_FELT252: felt252 = 2_felt252.pow(192);
pub const SHIFT_25B_FELT252: felt252 = 2_felt252.pow(200);
pub const SHIFT_26B_FELT252: felt252 = 2_felt252.pow(208);
pub const SHIFT_27B_FELT252: felt252 = 2_felt252.pow(216);
pub const SHIFT_28B_FELT252: felt252 = 2_felt252.pow(224);
pub const SHIFT_29B_FELT252: felt252 = 2_felt252.pow(232);
pub const SHIFT_30B_FELT252: felt252 = 2_felt252.pow(240);
pub const SHIFT_31B_FELT252: felt252 = 2_felt252.pow(248);


pub const SHIFT_0B_U16: u16 = 1;
pub const SHIFT_1B_U16: u16 = 2_u16.pow(8);

pub const SHIFT_0B_U32: u32 = 1;
pub const SHIFT_1B_U32: u32 = 2_u32.pow(8);
pub const SHIFT_2B_U32: u32 = 2_u32.pow(16);
pub const SHIFT_3B_U32: u32 = 2_u32.pow(24);

pub const SHIFT_0B_U64: u64 = 1;
pub const SHIFT_1B_U64: u64 = 2_u64.pow(8);
pub const SHIFT_2B_U64: u64 = 2_u64.pow(16);
pub const SHIFT_3B_U64: u64 = 2_u64.pow(24);
pub const SHIFT_4B_U64: u64 = 2_u64.pow(32);
pub const SHIFT_5B_U64: u64 = 2_u64.pow(40);
pub const SHIFT_6B_U64: u64 = 2_u64.pow(48);
pub const SHIFT_7B_U64: u64 = 2_u64.pow(56);

pub const SHIFT_0B_U128: u128 = 1;
pub const SHIFT_1B_U128: u128 = 2_u128.pow(8);
pub const SHIFT_2B_U128: u128 = 2_u128.pow(16);
pub const SHIFT_3B_U128: u128 = 2_u128.pow(24);
pub const SHIFT_4B_U128: u128 = 2_u128.pow(32);
pub const SHIFT_5B_U128: u128 = 2_u128.pow(40);
pub const SHIFT_6B_U128: u128 = 2_u128.pow(48);
pub const SHIFT_7B_U128: u128 = 2_u128.pow(56);
pub const SHIFT_8B_U128: u128 = 2_u128.pow(64);
pub const SHIFT_9B_U128: u128 = 2_u128.pow(72);
pub const SHIFT_10B_U128: u128 = 2_u128.pow(80);
pub const SHIFT_11B_U128: u128 = 2_u128.pow(88);
pub const SHIFT_12B_U128: u128 = 2_u128.pow(96);
pub const SHIFT_13B_U128: u128 = 2_u128.pow(104);
pub const SHIFT_14B_U128: u128 = 2_u128.pow(112);
pub const SHIFT_15B_U128: u128 = 2_u128.pow(120);

pub const SHIFT_0B_U256: u256 = 1_u256;
pub const SHIFT_1B_U256: u256 = 2_u256.pow(8);
pub const SHIFT_2B_U256: u256 = 2_u256.pow(16);
pub const SHIFT_3B_U256: u256 = 2_u256.pow(24);
pub const SHIFT_4B_U256: u256 = 2_u256.pow(32);
pub const SHIFT_5B_U256: u256 = 2_u256.pow(40);
pub const SHIFT_6B_U256: u256 = 2_u256.pow(48);
pub const SHIFT_7B_U256: u256 = 2_u256.pow(56);
pub const SHIFT_8B_U256: u256 = 2_u256.pow(64);
pub const SHIFT_9B_U256: u256 = 2_u256.pow(72);
pub const SHIFT_10B_U256: u256 = 2_u256.pow(80);
pub const SHIFT_11B_U256: u256 = 2_u256.pow(88);
pub const SHIFT_12B_U256: u256 = 2_u256.pow(96);
pub const SHIFT_13B_U256: u256 = 2_u256.pow(104);
pub const SHIFT_14B_U256: u256 = 2_u256.pow(112);
pub const SHIFT_15B_U256: u256 = 2_u256.pow(120);
pub const SHIFT_16B_U256: u256 = 2_u256.pow(128);
pub const SHIFT_17B_U256: u256 = 2_u256.pow(136);
pub const SHIFT_18B_U256: u256 = 2_u256.pow(144);
pub const SHIFT_19B_U256: u256 = 2_u256.pow(152);
pub const SHIFT_20B_U256: u256 = 2_u256.pow(160);
pub const SHIFT_21B_U256: u256 = 2_u256.pow(168);
pub const SHIFT_22B_U256: u256 = 2_u256.pow(176);
pub const SHIFT_23B_U256: u256 = 2_u256.pow(184);
pub const SHIFT_24B_U256: u256 = 2_u256.pow(192);
pub const SHIFT_25B_U256: u256 = 2_u256.pow(200);
pub const SHIFT_26B_U256: u256 = 2_u256.pow(208);
pub const SHIFT_27B_U256: u256 = 2_u256.pow(216);
pub const SHIFT_28B_U256: u256 = 2_u256.pow(224);
pub const SHIFT_29B_U256: u256 = 2_u256.pow(232);
pub const SHIFT_30B_U256: u256 = 2_u256.pow(240);
pub const SHIFT_31B_U256: u256 = 2_u256.pow(248);

pub const MASK_1B_U16: u16 = SHIFT_1B_U16 - 1;
pub const MASK_2B_U16: u16 = Bounded::MAX;

pub const MASK_1B_U32: u32 = MASK_1B_U16.into();
pub const MASK_2B_U32: u32 = SHIFT_2B_U32 - 1;
pub const MASK_3B_U32: u32 = SHIFT_3B_U32 - 1;
pub const MASK_4B_U32: u32 = Bounded::MAX;

pub const MASK_1B_U64: u64 = MASK_1B_U16.into();
pub const MASK_2B_U64: u64 = MASK_2B_U32.into();
pub const MASK_3B_U64: u64 = MASK_3B_U32.into();
pub const MASK_4B_U64: u64 = MASK_4B_U32.into();
pub const MASK_5B_U64: u64 = SHIFT_5B_U64 - 1;
pub const MASK_6B_U64: u64 = SHIFT_6B_U64 - 1;
pub const MASK_7B_U64: u64 = SHIFT_7B_U64 - 1;
pub const MASK_8B_U64: u64 = Bounded::MAX;

pub const MASK_1B_U128: u128 = MASK_1B_U16.into();
pub const MASK_2B_U128: u128 = MASK_2B_U64.into();
pub const MASK_3B_U128: u128 = MASK_3B_U64.into();
pub const MASK_4B_U128: u128 = MASK_4B_U64.into();
pub const MASK_5B_U128: u128 = MASK_5B_U64.into();
pub const MASK_6B_U128: u128 = MASK_6B_U64.into();
pub const MASK_7B_U128: u128 = MASK_7B_U64.into();
pub const MASK_8B_U128: u128 = MASK_8B_U64.into();
pub const MASK_9B_U128: u128 = SHIFT_9B_U128 - 1;
pub const MASK_10B_U128: u128 = SHIFT_10B_U128 - 1;
pub const MASK_11B_U128: u128 = SHIFT_11B_U128 - 1;
pub const MASK_12B_U128: u128 = SHIFT_12B_U128 - 1;
pub const MASK_13B_U128: u128 = SHIFT_13B_U128 - 1;
pub const MASK_14B_U128: u128 = SHIFT_14B_U128 - 1;
pub const MASK_15B_U128: u128 = SHIFT_15B_U128 - 1;
pub const MASK_16B_U128: u128 = Bounded::MAX;

pub const MASK_1B_FELT252: felt252 = MASK_1B_U16.into();
pub const MASK_2B_FELT252: felt252 = MASK_2B_U64.into();
pub const MASK_3B_FELT252: felt252 = MASK_3B_U64.into();
pub const MASK_4B_FELT252: felt252 = MASK_4B_U64.into();
pub const MASK_5B_FELT252: felt252 = MASK_5B_U128.into();
pub const MASK_6B_FELT252: felt252 = MASK_6B_U128.into();
pub const MASK_7B_FELT252: felt252 = MASK_7B_U128.into();
pub const MASK_8B_FELT252: felt252 = MASK_8B_U128.into();
pub const MASK_9B_FELT252: felt252 = MASK_9B_U128.into();
pub const MASK_10B_FELT252: felt252 = MASK_10B_U128.into();
pub const MASK_11B_FELT252: felt252 = MASK_11B_U128.into();
pub const MASK_12B_FELT252: felt252 = MASK_12B_U128.into();
pub const MASK_13B_FELT252: felt252 = MASK_13B_U128.into();
pub const MASK_14B_FELT252: felt252 = MASK_14B_U128.into();
pub const MASK_15B_FELT252: felt252 = MASK_15B_U128.into();
pub const MASK_16B_FELT252: felt252 = MASK_16B_U128.into();
pub const MASK_17B_FELT252: felt252 = SHIFT_17B_FELT252 - 1;
pub const MASK_18B_FELT252: felt252 = SHIFT_18B_FELT252 - 1;
pub const MASK_19B_FELT252: felt252 = SHIFT_19B_FELT252 - 1;
pub const MASK_20B_FELT252: felt252 = SHIFT_20B_FELT252 - 1;
pub const MASK_21B_FELT252: felt252 = SHIFT_21B_FELT252 - 1;
pub const MASK_22B_FELT252: felt252 = SHIFT_22B_FELT252 - 1;
pub const MASK_23B_FELT252: felt252 = SHIFT_23B_FELT252 - 1;
pub const MASK_24B_FELT252: felt252 = SHIFT_24B_FELT252 - 1;
pub const MASK_25B_FELT252: felt252 = SHIFT_25B_FELT252 - 1;
pub const MASK_26B_FELT252: felt252 = SHIFT_26B_FELT252 - 1;
pub const MASK_27B_FELT252: felt252 = SHIFT_27B_FELT252 - 1;
pub const MASK_28B_FELT252: felt252 = SHIFT_28B_FELT252 - 1;
pub const MASK_29B_FELT252: felt252 = SHIFT_29B_FELT252 - 1;
pub const MASK_30B_FELT252: felt252 = SHIFT_30B_FELT252 - 1;
pub const MASK_31B_FELT252: felt252 = SHIFT_31B_FELT252 - 1;

pub const MASK_1B_U256: u256 = MASK_1B_U16.into();
pub const MASK_2B_U256: u256 = MASK_2B_U64.into();
pub const MASK_3B_U256: u256 = MASK_3B_U64.into();
pub const MASK_4B_U256: u256 = MASK_4B_U64.into();
pub const MASK_5B_U256: u256 = MASK_5B_U128.into();
pub const MASK_6B_U256: u256 = MASK_6B_U128.into();
pub const MASK_7B_U256: u256 = MASK_7B_U128.into();
pub const MASK_8B_U256: u256 = MASK_8B_U128.into();
pub const MASK_9B_U256: u256 = MASK_9B_U128.into();
pub const MASK_10B_U256: u256 = MASK_10B_U128.into();
pub const MASK_11B_U256: u256 = MASK_11B_U128.into();
pub const MASK_12B_U256: u256 = MASK_12B_U128.into();
pub const MASK_13B_U256: u256 = MASK_13B_U128.into();
pub const MASK_14B_U256: u256 = MASK_14B_U128.into();
pub const MASK_15B_U256: u256 = MASK_15B_U128.into();
pub const MASK_16B_U256: u256 = MASK_16B_U128.into();
pub const MASK_17B_U256: u256 = SHIFT_17B_U256 - 1;
pub const MASK_18B_U256: u256 = SHIFT_18B_U256 - 1;
pub const MASK_19B_U256: u256 = SHIFT_19B_U256 - 1;
pub const MASK_20B_U256: u256 = SHIFT_20B_U256 - 1;
pub const MASK_21B_U256: u256 = SHIFT_21B_U256 - 1;
pub const MASK_22B_U256: u256 = SHIFT_22B_U256 - 1;
pub const MASK_23B_U256: u256 = SHIFT_23B_U256 - 1;
pub const MASK_24B_U256: u256 = SHIFT_24B_U256 - 1;
pub const MASK_25B_U256: u256 = SHIFT_25B_U256 - 1;
pub const MASK_26B_U256: u256 = SHIFT_26B_U256 - 1;
pub const MASK_27B_U256: u256 = SHIFT_27B_U256 - 1;
pub const MASK_28B_U256: u256 = SHIFT_28B_U256 - 1;
pub const MASK_29B_U256: u256 = SHIFT_29B_U256 - 1;
pub const MASK_30B_U256: u256 = SHIFT_30B_U256 - 1;
pub const MASK_31B_U256: u256 = SHIFT_31B_U256 - 1;
pub const MASK_32B_U256: u256 = Bounded::MAX;


pub trait BytePacking<T, S> {
    fn pack(value: T) -> S;
    fn unpack(value: S) -> T;
}

pub trait MaskDowncast<T, S> {
    fn cast(value: T) -> S;
}

pub trait UnpackBytes<T, S> {
    fn unpack<const SHIFT: T>(value: T) -> S;
}

pub trait ShiftCast<T, S> {
    fn cast<const SHIFT: S>(value: T) -> S;
}

impl MaskDowncastImpl<
    T, S, +Drop<T>, +Bounded<S>, +BitAnd<T>, +Into<S, T>, +TryInto<T, S>,
> of MaskDowncast<T, S> {
    fn cast(value: T) -> S {
        (value & Bounded::<S>::MAX.into()).try_into().unwrap()
    }
}

impl UnpackBytesImpl<T, S, +Div<T>, +MaskDowncast<T, S>> of UnpackBytes<T, S> {
    fn unpack<const SHIFT: T>(value: T) -> S {
        MaskDowncast::cast(value / SHIFT)
    }
}

impl ShiftCastImpl<T, S, +Mul<S>, +Into<T, S>> of ShiftCast<T, S> {
    fn cast<const SHIFT: S>(value: T) -> S {
        value.into() * SHIFT
    }
}


mod impls {
    use core::traits::BitAnd;
    use super::BytePacking;
    pub impl FixedArray2StorePack<
        T,
        S,
        const SHIFT: S,
        const MASK: S,
        +Drop<T>,
        +Drop<S>,
        +Add<S>,
        +Copy<S>,
        +Mul<S>,
        +Div<S>,
        +BitAnd<S>,
        +TryInto<S, T>,
        +Into<T, S>,
    > of BytePacking<[T; 2], S> {
        fn pack(value: [T; 2]) -> S {
            let [v1, v2] = value;
            (v1.into() + v2.into() * SHIFT)
        }

        fn unpack(value: S) -> [T; 2] {
            let v1: T = (value & MASK).try_into().unwrap();
            let v2: T = ((value / SHIFT) & MASK).try_into().unwrap();
            [v1, v2]
        }
    }

    pub impl FixedArray4StorePack<
        T,
        S,
        const SHIFT_1: S,
        const SHIFT_2: S,
        const SHIFT_3: S,
        const MASK: S,
        +Drop<T>,
        +Drop<S>,
        +Add<S>,
        +Copy<S>,
        +Mul<S>,
        +Div<S>,
        +BitAnd<S>,
        +TryInto<S, T>,
        +Into<T, S>,
    > of BytePacking<[T; 4], S> {
        fn pack(value: [T; 4]) -> S {
            let [v1, v2, v3, v4] = value;
            (v1.into() + v2.into() * SHIFT_1 + v3.into() * SHIFT_2 + v4.into() * SHIFT_3)
        }

        fn unpack(value: S) -> [T; 4] {
            let v1: T = (value & MASK).try_into().unwrap();
            let v2: T = ((value / SHIFT_1) & MASK).try_into().unwrap();
            let v3: T = ((value / SHIFT_2) & MASK).try_into().unwrap();
            let v4: T = ((value / SHIFT_3) & MASK).try_into().unwrap();
            [v1, v2, v3, v4]
        }
    }


    pub impl FixedArray8StorePack<
        T,
        S,
        const SHIFT_1: S,
        const SHIFT_2: S,
        const SHIFT_3: S,
        const SHIFT_4: S,
        const SHIFT_5: S,
        const SHIFT_6: S,
        const SHIFT_7: S,
        const MASK: S,
        +Drop<T>,
        +Drop<S>,
        +Add<S>,
        +Copy<S>,
        +Mul<S>,
        +Div<S>,
        +BitAnd<S>,
        +TryInto<S, T>,
        +Into<T, S>,
    > of BytePacking<[T; 8], S> {
        fn pack(value: [T; 8]) -> S {
            let [v1, v2, v3, v4, v5, v6, v7, v8] = value;
            (v1.into()
                + v2.into() * SHIFT_1
                + v3.into() * SHIFT_2
                + v4.into() * SHIFT_3
                + v5.into() * SHIFT_4
                + v6.into() * SHIFT_5
                + v7.into() * SHIFT_6
                + v8.into() * SHIFT_7)
        }

        fn unpack(value: S) -> [T; 8] {
            let v1: T = (value & MASK).try_into().unwrap();
            let v2: T = ((value / SHIFT_1) & MASK).try_into().unwrap();
            let v3: T = ((value / SHIFT_2) & MASK).try_into().unwrap();
            let v4: T = ((value / SHIFT_3) & MASK).try_into().unwrap();
            let v5: T = ((value / SHIFT_4) & MASK).try_into().unwrap();
            let v6: T = ((value / SHIFT_5) & MASK).try_into().unwrap();
            let v7: T = ((value / SHIFT_6) & MASK).try_into().unwrap();
            let v8: T = ((value / SHIFT_7) & MASK).try_into().unwrap();
            [v1, v2, v3, v4, v5, v6, v7, v8]
        }
    }

    pub impl FixedArray16StorePack<
        T,
        S,
        const SHIFT_1: S,
        const SHIFT_2: S,
        const SHIFT_3: S,
        const SHIFT_4: S,
        const SHIFT_5: S,
        const SHIFT_6: S,
        const SHIFT_7: S,
        const SHIFT_8: S,
        const SHIFT_9: S,
        const SHIFT_10: S,
        const SHIFT_11: S,
        const SHIFT_12: S,
        const SHIFT_13: S,
        const SHIFT_14: S,
        const SHIFT_15: S,
        const MASK: S,
        +Drop<T>,
        +Drop<S>,
        +Add<S>,
        +Copy<S>,
        +Mul<S>,
        +Div<S>,
        +BitAnd<S>,
        +TryInto<S, T>,
        +Into<T, S>,
    > of BytePacking<[T; 16], S> {
        fn pack(value: [T; 16]) -> S {
            let [v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16] = value;
            (v1.into()
                + v2.into() * SHIFT_1
                + v3.into() * SHIFT_2
                + v4.into() * SHIFT_3
                + v5.into() * SHIFT_4
                + v6.into() * SHIFT_5
                + v7.into() * SHIFT_6
                + v8.into() * SHIFT_7
                + v9.into() * SHIFT_8
                + v10.into() * SHIFT_9
                + v11.into() * SHIFT_10
                + v12.into() * SHIFT_11
                + v13.into() * SHIFT_12
                + v14.into() * SHIFT_13
                + v15.into() * SHIFT_14
                + v16.into() * SHIFT_15)
        }

        fn unpack(value: S) -> [T; 16] {
            let v1: T = (value & MASK).try_into().unwrap();
            let v2: T = ((value / SHIFT_1) & MASK).try_into().unwrap();
            let v3: T = ((value / SHIFT_2) & MASK).try_into().unwrap();
            let v4: T = ((value / SHIFT_3) & MASK).try_into().unwrap();
            let v5: T = ((value / SHIFT_4) & MASK).try_into().unwrap();
            let v6: T = ((value / SHIFT_5) & MASK).try_into().unwrap();
            let v7: T = ((value / SHIFT_6) & MASK).try_into().unwrap();
            let v8: T = ((value / SHIFT_7) & MASK).try_into().unwrap();
            let v9: T = ((value / SHIFT_8) & MASK).try_into().unwrap();
            let v10: T = ((value / SHIFT_9) & MASK).try_into().unwrap();
            let v11: T = ((value / SHIFT_10) & MASK).try_into().unwrap();
            let v12: T = ((value / SHIFT_11) & MASK).try_into().unwrap();
            let v13: T = ((value / SHIFT_12) & MASK).try_into().unwrap();
            let v14: T = ((value / SHIFT_13) & MASK).try_into().unwrap();
            let v15: T = ((value / SHIFT_14) & MASK).try_into().unwrap();
            let v16: T = ((value / SHIFT_15) & MASK).try_into().unwrap();
            [v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16]
        }
    }
}
pub impl IFixedArray2StorePack<
    T,
    S,
    +IntPacking<T>,
    +BytePacking<[IntPacking::<T>::Packed; 2], S>,
    +Drop<T>,
    +Drop<IntPacking::<T>::Packed>,
> of BytePacking<[T; 2], S> {
    fn pack(value: [T; 2]) -> S {
        let [v1, v2] = value;
        let packed: [IntPacking::<T>::Packed; 2] = [IntPacking::pack(v1), IntPacking::pack(v2)];
        BytePacking::pack(packed)
    }

    fn unpack(value: S) -> [T; 2] {
        let [v1, v2]: [IntPacking::<T>::Packed; 2] = BytePacking::unpack(value);
        [IntPacking::unpack(v1), IntPacking::unpack(v2)]
    }
}

pub impl IFixedArray4StorePack<
    T,
    S,
    +IntPacking<T>,
    +BytePacking<[IntPacking::<T>::Packed; 4], S>,
    +Drop<T>,
    +Drop<IntPacking::<T>::Packed>,
> of BytePacking<[T; 4], S> {
    fn pack(value: [T; 4]) -> S {
        let [v1, v2, v3, v4] = value;
        let packed: [IntPacking::<T>::Packed; 4] = [
            IntPacking::pack(v1), IntPacking::pack(v2), IntPacking::pack(v3), IntPacking::pack(v4),
        ];
        BytePacking::pack(packed)
    }

    fn unpack(value: S) -> [T; 4] {
        let [v1, v2, v3, v4]: [IntPacking::<T>::Packed; 4] = BytePacking::unpack(value);
        [
            IntPacking::unpack(v1), IntPacking::unpack(v2), IntPacking::unpack(v3),
            IntPacking::unpack(v4),
        ]
    }
}

pub impl IFixedArray8StorePack<
    T,
    S,
    +IntPacking<T>,
    +BytePacking<[IntPacking::<T>::Packed; 8], S>,
    +Drop<T>,
    +Drop<IntPacking::<T>::Packed>,
> of BytePacking<[T; 8], S> {
    fn pack(value: [T; 8]) -> S {
        let [v1, v2, v3, v4, v5, v6, v7, v8] = value;
        let packed: [IntPacking::<T>::Packed; 8] = [
            IntPacking::pack(v1), IntPacking::pack(v2), IntPacking::pack(v3), IntPacking::pack(v4),
            IntPacking::pack(v5), IntPacking::pack(v6), IntPacking::pack(v7), IntPacking::pack(v8),
        ];
        BytePacking::pack(packed)
    }
    fn unpack(value: S) -> [T; 8] {
        let [v1, v2, v3, v4, v5, v6, v7, v8]: [IntPacking::<T>::Packed; 8] = BytePacking::unpack(
            value,
        );
        [
            IntPacking::unpack(v1), IntPacking::unpack(v2), IntPacking::unpack(v3),
            IntPacking::unpack(v4), IntPacking::unpack(v5), IntPacking::unpack(v6),
            IntPacking::unpack(v7), IntPacking::unpack(v8),
        ]
    }
}

pub impl IFixedArray16StorePack<
    T,
    S,
    +IntPacking<T>,
    +BytePacking<[IntPacking::<T>::Packed; 16], S>,
    +Drop<T>,
    +Drop<IntPacking::<T>::Packed>,
> of BytePacking<[T; 16], S> {
    fn pack(value: [T; 16]) -> S {
        let [v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16] = value;
        let packed: [IntPacking::<T>::Packed; 16] = [
            IntPacking::pack(v1), IntPacking::pack(v2), IntPacking::pack(v3), IntPacking::pack(v4),
            IntPacking::pack(v5), IntPacking::pack(v6), IntPacking::pack(v7), IntPacking::pack(v8),
            IntPacking::pack(v9), IntPacking::pack(v10), IntPacking::pack(v11),
            IntPacking::pack(v12), IntPacking::pack(v13), IntPacking::pack(v14),
            IntPacking::pack(v15), IntPacking::pack(v16),
        ];
        BytePacking::pack(packed)
    }

    fn unpack(value: S) -> [T; 16] {
        let [
            v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16,
        ]: [IntPacking::<T>::Packed; 16] =
            BytePacking::unpack(
            value,
        );
        [
            IntPacking::unpack(v1), IntPacking::unpack(v2), IntPacking::unpack(v3),
            IntPacking::unpack(v4), IntPacking::unpack(v5), IntPacking::unpack(v6),
            IntPacking::unpack(v7), IntPacking::unpack(v8), IntPacking::unpack(v9),
            IntPacking::unpack(v10), IntPacking::unpack(v11), IntPacking::unpack(v12),
            IntPacking::unpack(v13), IntPacking::unpack(v14), IntPacking::unpack(v15),
            IntPacking::unpack(v16),
        ]
    }
}


impl U8sPackedU16 = impls::FixedArray2StorePack<u8, u16, SHIFT_1B_U16, MASK_1B_U16>;
impl U16sPackedU32 = impls::FixedArray2StorePack<u16, u32, SHIFT_2B_U32, MASK_2B_U32>;
impl U32sPackedU64 = impls::FixedArray2StorePack<u32, u64, SHIFT_4B_U64, MASK_4B_U64>;
impl U64sPackedU128 = impls::FixedArray2StorePack<u64, u128, SHIFT_8B_U128, MASK_8B_U128>;

impl U8sPackedU32 =
    impls::FixedArray4StorePack<u8, u32, SHIFT_1B_U32, SHIFT_2B_U32, SHIFT_3B_U32, MASK_1B_U32>;
impl U16sPackedU64 =
    impls::FixedArray4StorePack<u16, u64, SHIFT_2B_U64, SHIFT_4B_U64, SHIFT_6B_U64, MASK_2B_U64>;
impl U32sPackedU128 =
    impls::FixedArray4StorePack<
        u32, u128, SHIFT_4B_U128, SHIFT_8B_U128, SHIFT_12B_U128, MASK_4B_U128,
    >;

impl U8sPackedU64 =
    impls::FixedArray8StorePack<
        u8,
        u64,
        SHIFT_1B_U64,
        SHIFT_2B_U64,
        SHIFT_3B_U64,
        SHIFT_4B_U64,
        SHIFT_5B_U64,
        SHIFT_6B_U64,
        SHIFT_7B_U64,
        MASK_1B_U64,
    >;
impl U16sPackedU128 =
    impls::FixedArray8StorePack<
        u16,
        u128,
        SHIFT_2B_U128,
        SHIFT_4B_U128,
        SHIFT_6B_U128,
        SHIFT_8B_U128,
        SHIFT_10B_U128,
        SHIFT_12B_U128,
        SHIFT_14B_U128,
        MASK_2B_U128,
    >;

impl U8sPackedU128 =
    impls::FixedArray16StorePack<
        u8,
        u128,
        SHIFT_1B_U128,
        SHIFT_2B_U128,
        SHIFT_3B_U128,
        SHIFT_4B_U128,
        SHIFT_5B_U128,
        SHIFT_6B_U128,
        SHIFT_7B_U128,
        SHIFT_8B_U128,
        SHIFT_9B_U128,
        SHIFT_10B_U128,
        SHIFT_11B_U128,
        SHIFT_12B_U128,
        SHIFT_13B_U128,
        SHIFT_14B_U128,
        SHIFT_15B_U128,
        MASK_1B_U128,
    >;

impl I8sPackedU16 = IFixedArray2StorePack<i8, u16, I8IntPacking, U8sPackedU16>;
impl I16sPackedU32 = IFixedArray2StorePack<i16, u32, I16IntPacking, U16sPackedU32>;
impl I32sPackedU64 = IFixedArray2StorePack<i32, u64, I32IntPacking, U32sPackedU64>;
impl I64sPackedU128 = IFixedArray2StorePack<i64, u128, I64IntPacking, U64sPackedU128>;

impl I8sPackedU32 = IFixedArray4StorePack<i8, u32, I8IntPacking, U8sPackedU32>;
impl I16sPackedU64 = IFixedArray4StorePack<i16, u64, I16IntPacking, U16sPackedU64>;
impl I32sPackedU128 = IFixedArray4StorePack<i32, u128, I32IntPacking, U32sPackedU128>;

impl I8sPackedU64 = IFixedArray8StorePack<i8, u64, I8IntPacking, U8sPackedU64>;
impl I16sPackedU128 = IFixedArray8StorePack<i16, u128, I16IntPacking, U16sPackedU128>;

impl I8sPackedU128 = IFixedArray16StorePack<i8, u128, I8IntPacking, U8sPackedU128>;


impl U8sPackedFelt252 of BytePacking<[u8; 31], felt252> {
    fn pack(value: [u8; 31]) -> felt252 {
        let [
            v1,
            v2,
            v3,
            v4,
            v5,
            v6,
            v7,
            v8,
            v9,
            v10,
            v11,
            v12,
            v13,
            v14,
            v15,
            v16,
            v17,
            v18,
            v19,
            v20,
            v21,
            v22,
            v23,
            v24,
            v25,
            v26,
            v27,
            v28,
            v29,
            v30,
            v31,
        ] =
            value;
        (v1.into()
            + v2.into() * SHIFT_1B_FELT252
            + v3.into() * SHIFT_2B_FELT252
            + v4.into() * SHIFT_3B_FELT252
            + v5.into() * SHIFT_4B_FELT252
            + v6.into() * SHIFT_5B_FELT252
            + v7.into() * SHIFT_6B_FELT252
            + v8.into() * SHIFT_7B_FELT252
            + v9.into() * SHIFT_8B_FELT252
            + v10.into() * SHIFT_9B_FELT252
            + v11.into() * SHIFT_10B_FELT252
            + v12.into() * SHIFT_11B_FELT252
            + v13.into() * SHIFT_12B_FELT252
            + v14.into() * SHIFT_13B_FELT252
            + v15.into() * SHIFT_14B_FELT252
            + v16.into() * SHIFT_15B_FELT252
            + v17.into() * SHIFT_16B_FELT252
            + v18.into() * SHIFT_17B_FELT252
            + v19.into() * SHIFT_18B_FELT252
            + v20.into() * SHIFT_19B_FELT252
            + v21.into() * SHIFT_20B_FELT252
            + v22.into() * SHIFT_21B_FELT252
            + v23.into() * SHIFT_22B_FELT252
            + v24.into() * SHIFT_23B_FELT252
            + v25.into() * SHIFT_24B_FELT252
            + v26.into() * SHIFT_25B_FELT252
            + v27.into() * SHIFT_26B_FELT252
            + v28.into() * SHIFT_27B_FELT252
            + v29.into() * SHIFT_28B_FELT252
            + v30.into() * SHIFT_29B_FELT252
            + v31.into() * SHIFT_30B_FELT252)
    }

    fn unpack(value: felt252) -> [u8; 31] {
        let u256 { low, high } = value.into();
        let [v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16] =
            U8sPackedU128::unpack(
            low,
        );
        let v17: u8 = (high & MASK_1B_U128).try_into().unwrap();
        let v18: u8 = ((high / SHIFT_1B_U128) & MASK_1B_U128).try_into().unwrap();
        let v19: u8 = ((high / SHIFT_2B_U128) & MASK_1B_U128).try_into().unwrap();
        let v20: u8 = ((high / SHIFT_3B_U128) & MASK_1B_U128).try_into().unwrap();
        let v21: u8 = ((high / SHIFT_4B_U128) & MASK_1B_U128).try_into().unwrap();
        let v22: u8 = ((high / SHIFT_5B_U128) & MASK_1B_U128).try_into().unwrap();
        let v23: u8 = ((high / SHIFT_6B_U128) & MASK_1B_U128).try_into().unwrap();
        let v24: u8 = ((high / SHIFT_7B_U128) & MASK_1B_U128).try_into().unwrap();
        let v25: u8 = ((high / SHIFT_8B_U128) & MASK_1B_U128).try_into().unwrap();
        let v26: u8 = ((high / SHIFT_9B_U128) & MASK_1B_U128).try_into().unwrap();
        let v27: u8 = ((high / SHIFT_10B_U128) & MASK_1B_U128).try_into().unwrap();
        let v28: u8 = ((high / SHIFT_11B_U128) & MASK_1B_U128).try_into().unwrap();
        let v29: u8 = ((high / SHIFT_12B_U128) & MASK_1B_U128).try_into().unwrap();
        let v30: u8 = ((high / SHIFT_13B_U128) & MASK_1B_U128).try_into().unwrap();
        let v31: u8 = ((high / SHIFT_14B_U128) & MASK_1B_U128).try_into().unwrap();
        [
            v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19,
            v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31,
        ]
    }
}

impl U16sPackedFelt252 of BytePacking<[u16; 15], felt252> {
    fn pack(value: [u16; 15]) -> felt252 {
        let [v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15] = value;
        (v1.into()
            + v2.into() * SHIFT_2B_FELT252
            + v3.into() * SHIFT_4B_FELT252
            + v4.into() * SHIFT_6B_FELT252
            + v5.into() * SHIFT_8B_FELT252
            + v6.into() * SHIFT_10B_FELT252
            + v7.into() * SHIFT_12B_FELT252
            + v8.into() * SHIFT_14B_FELT252
            + v9.into() * SHIFT_16B_FELT252
            + v10.into() * SHIFT_18B_FELT252
            + v11.into() * SHIFT_20B_FELT252
            + v12.into() * SHIFT_22B_FELT252
            + v13.into() * SHIFT_24B_FELT252
            + v14.into() * SHIFT_26B_FELT252
            + v15.into() * SHIFT_28B_FELT252)
    }

    fn unpack(value: felt252) -> [u16; 15] {
        let u256 { low, high } = value.into();
        let [v1, v2, v3, v4, v5, v6, v7, v8] = U16sPackedU128::unpack(low);
        let v9: u16 = (high & MASK_2B_U128).try_into().unwrap();
        let v10: u16 = ((high / SHIFT_2B_U128) & MASK_2B_U128).try_into().unwrap();
        let v11: u16 = ((high / SHIFT_4B_U128) & MASK_2B_U128).try_into().unwrap();
        let v12: u16 = ((high / SHIFT_6B_U128) & MASK_2B_U128).try_into().unwrap();
        let v13: u16 = ((high / SHIFT_8B_U128) & MASK_2B_U128).try_into().unwrap();
        let v14: u16 = ((high / SHIFT_10B_U128) & MASK_2B_U128).try_into().unwrap();
        let v15: u16 = ((high / SHIFT_12B_U128) & MASK_2B_U128).try_into().unwrap();
        [v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15]
    }
}

impl U32sPackedFelt252 of BytePacking<[u32; 7], felt252> {
    fn pack(value: [u32; 7]) -> felt252 {
        let [v1, v2, v3, v4, v5, v6, v7] = value;
        (v1.into()
            + v2.into() * SHIFT_4B_FELT252
            + v3.into() * SHIFT_8B_FELT252
            + v4.into() * SHIFT_12B_FELT252
            + v5.into() * SHIFT_16B_FELT252
            + v6.into() * SHIFT_20B_FELT252
            + v7.into() * SHIFT_24B_FELT252)
    }

    fn unpack(value: felt252) -> [u32; 7] {
        let u256 { low, high } = value.into();
        let [v1, v2, v3, v4] = U32sPackedU128::unpack(low);
        let v5: u32 = (high & MASK_4B_U128).try_into().unwrap();
        let v6: u32 = ((high / SHIFT_4B_U128) & MASK_4B_U128).try_into().unwrap();
        let v7: u32 = ((high / SHIFT_8B_U128) & MASK_4B_U128).try_into().unwrap();
        [v1, v2, v3, v4, v5, v6, v7]
    }
}

impl U64sPackedFelt252 of BytePacking<[u64; 3], felt252> {
    fn pack(value: [u64; 3]) -> felt252 {
        let [v1, v2, v3] = value;
        (v1.into() + v2.into() * SHIFT_8B_FELT252 + v3.into() * SHIFT_16B_FELT252)
    }

    fn unpack(value: felt252) -> [u64; 3] {
        let u256 { low, high } = value.into();
        let [v1, v2] = U64sPackedU128::unpack(low);
        let v3: u64 = (high & MASK_8B_U128).try_into().unwrap();
        [v1, v2, v3]
    }
}

impl I8sPackedFelt252 of BytePacking<[i8; 31], felt252> {
    fn pack(value: [i8; 31]) -> felt252 {
        let [
            v1,
            v2,
            v3,
            v4,
            v5,
            v6,
            v7,
            v8,
            v9,
            v10,
            v11,
            v12,
            v13,
            v14,
            v15,
            v16,
            v17,
            v18,
            v19,
            v20,
            v21,
            v22,
            v23,
            v24,
            v25,
            v26,
            v27,
            v28,
            v29,
            v30,
            v31,
        ] =
            value;
        U8sPackedFelt252::pack(
            [
                I8IntPacking::pack(v1), I8IntPacking::pack(v2), I8IntPacking::pack(v3),
                I8IntPacking::pack(v4), I8IntPacking::pack(v5), I8IntPacking::pack(v6),
                I8IntPacking::pack(v7), I8IntPacking::pack(v8), I8IntPacking::pack(v9),
                I8IntPacking::pack(v10), I8IntPacking::pack(v11), I8IntPacking::pack(v12),
                I8IntPacking::pack(v13), I8IntPacking::pack(v14), I8IntPacking::pack(v15),
                I8IntPacking::pack(v16), I8IntPacking::pack(v17), I8IntPacking::pack(v18),
                I8IntPacking::pack(v19), I8IntPacking::pack(v20), I8IntPacking::pack(v21),
                I8IntPacking::pack(v22), I8IntPacking::pack(v23), I8IntPacking::pack(v24),
                I8IntPacking::pack(v25), I8IntPacking::pack(v26), I8IntPacking::pack(v27),
                I8IntPacking::pack(v28), I8IntPacking::pack(v29), I8IntPacking::pack(v30),
                I8IntPacking::pack(v31),
            ],
        )
    }

    fn unpack(value: felt252) -> [i8; 31] {
        let [
            v1,
            v2,
            v3,
            v4,
            v5,
            v6,
            v7,
            v8,
            v9,
            v10,
            v11,
            v12,
            v13,
            v14,
            v15,
            v16,
            v17,
            v18,
            v19,
            v20,
            v21,
            v22,
            v23,
            v24,
            v25,
            v26,
            v27,
            v28,
            v29,
            v30,
            v31,
        ] =
            U8sPackedFelt252::unpack(
            value,
        );
        [
            I8IntPacking::unpack(v1), I8IntPacking::unpack(v2), I8IntPacking::unpack(v3),
            I8IntPacking::unpack(v4), I8IntPacking::unpack(v5), I8IntPacking::unpack(v6),
            I8IntPacking::unpack(v7), I8IntPacking::unpack(v8), I8IntPacking::unpack(v9),
            I8IntPacking::unpack(v10), I8IntPacking::unpack(v11), I8IntPacking::unpack(v12),
            I8IntPacking::unpack(v13), I8IntPacking::unpack(v14), I8IntPacking::unpack(v15),
            I8IntPacking::unpack(v16), I8IntPacking::unpack(v17), I8IntPacking::unpack(v18),
            I8IntPacking::unpack(v19), I8IntPacking::unpack(v20), I8IntPacking::unpack(v21),
            I8IntPacking::unpack(v22), I8IntPacking::unpack(v23), I8IntPacking::unpack(v24),
            I8IntPacking::unpack(v25), I8IntPacking::unpack(v26), I8IntPacking::unpack(v27),
            I8IntPacking::unpack(v28), I8IntPacking::unpack(v29), I8IntPacking::unpack(v30),
            I8IntPacking::unpack(v31),
        ]
    }
}

impl I16sPackedFelt252 of BytePacking<[i16; 15], felt252> {
    fn pack(value: [i16; 15]) -> felt252 {
        let [v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15] = value;
        U16sPackedFelt252::pack(
            [
                I16IntPacking::pack(v1), I16IntPacking::pack(v2), I16IntPacking::pack(v3),
                I16IntPacking::pack(v4), I16IntPacking::pack(v5), I16IntPacking::pack(v6),
                I16IntPacking::pack(v7), I16IntPacking::pack(v8), I16IntPacking::pack(v9),
                I16IntPacking::pack(v10), I16IntPacking::pack(v11), I16IntPacking::pack(v12),
                I16IntPacking::pack(v13), I16IntPacking::pack(v14), I16IntPacking::pack(v15),
            ],
        )
    }

    fn unpack(value: felt252) -> [i16; 15] {
        let [v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15] =
            U16sPackedFelt252::unpack(
            value,
        );
        [
            I16IntPacking::unpack(v1), I16IntPacking::unpack(v2), I16IntPacking::unpack(v3),
            I16IntPacking::unpack(v4), I16IntPacking::unpack(v5), I16IntPacking::unpack(v6),
            I16IntPacking::unpack(v7), I16IntPacking::unpack(v8), I16IntPacking::unpack(v9),
            I16IntPacking::unpack(v10), I16IntPacking::unpack(v11), I16IntPacking::unpack(v12),
            I16IntPacking::unpack(v13), I16IntPacking::unpack(v14), I16IntPacking::unpack(v15),
        ]
    }
}

impl I32sPackedFelt252 of BytePacking<[i32; 7], felt252> {
    fn pack(value: [i32; 7]) -> felt252 {
        let [v1, v2, v3, v4, v5, v6, v7] = value;
        U32sPackedFelt252::pack(
            [
                I32IntPacking::pack(v1), I32IntPacking::pack(v2), I32IntPacking::pack(v3),
                I32IntPacking::pack(v4), I32IntPacking::pack(v5), I32IntPacking::pack(v6),
                I32IntPacking::pack(v7),
            ],
        )
    }

    fn unpack(value: felt252) -> [i32; 7] {
        let [v1, v2, v3, v4, v5, v6, v7] = U32sPackedFelt252::unpack(value);
        [
            I32IntPacking::unpack(v1), I32IntPacking::unpack(v2), I32IntPacking::unpack(v3),
            I32IntPacking::unpack(v4), I32IntPacking::unpack(v5), I32IntPacking::unpack(v6),
            I32IntPacking::unpack(v7),
        ]
    }
}

impl I64sPackedFelt252 of BytePacking<[i64; 3], felt252> {
    fn pack(value: [i64; 3]) -> felt252 {
        let [v1, v2, v3] = value;
        U64sPackedFelt252::pack(
            [I64IntPacking::pack(v1), I64IntPacking::pack(v2), I64IntPacking::pack(v3)],
        )
    }

    fn unpack(value: felt252) -> [i64; 3] {
        let [v1, v2, v3] = U64sPackedFelt252::unpack(value);
        [I64IntPacking::unpack(v1), I64IntPacking::unpack(v2), I64IntPacking::unpack(v3)]
    }
}


#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_u8s_packed_u16() {
        let values: [u8; 2] = [0, 255];
        let packed = BytePacking::pack(values);
        let unpacked: [u8; 2] = BytePacking::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..2_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_u8s_packed_u32() {
        let values: [u8; 4] = [0, 1, 2, 3];
        let packed = BytePacking::pack(values);
        let unpacked: [u8; 4] = BytePacking::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..4_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_u8s_packed_u64() {
        let values: [u8; 8] = [0, 1, 2, 3, 4, 5, 6, 7];
        let packed = BytePacking::pack(values);
        let unpacked: [u8; 8] = BytePacking::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..8_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_u8s_packed_u128() {
        let values: [u8; 16] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
        let packed = BytePacking::pack(values);
        let unpacked: [u8; 16] = BytePacking::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..16_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_u8s_packed_felt252() {
        let values: [u8; 31] = [
            0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,
            24, 25, 26, 27, 28, 29, 30,
        ];
        let packed = BytePacking::pack(values);
        let unpacked: [u8; 31] = BytePacking::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..31_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_i8s_packed_u16() {
        let values: [i8; 2] = [0, -1];
        let packed = BytePacking::pack(values);
        let unpacked: [i8; 2] = BytePacking::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..2_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }


    #[test]
    fn test_i8s_packed_u32() {
        let values: [i8; 4] = [0, 1, -2, 3];
        let packed = BytePacking::pack(values);
        let unpacked: [i8; 4] = BytePacking::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..4_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_i8s_packed_u64() {
        let values: [i8; 8] = [0, 1, -2, 3, -4, 5, -6, 7];
        let packed = BytePacking::pack(values);
        let unpacked: [i8; 8] = BytePacking::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..8_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_i8s_packed_u128() {
        let values: [i8; 16] = [0, 1, -2, 3, -4, 5, -6, 7, -8, 9, -10, 11, -12, 13, -14, 15];
        let packed = BytePacking::pack(values);
        let unpacked: [i8; 16] = BytePacking::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..16_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_i8s_packed_felt252() {
        let values: [i8; 31] = [
            0, 1, -2, 3, -4, 5, -6, 7, -8, 9, -10, 11, -12, 13, -14, 15, -16, 17, -18, 19, -20, 21,
            -22, 23, -24, 25, -26, 27, -28, 29, -30,
        ];
        let packed = BytePacking::pack(values);
        let unpacked: [i8; 31] = BytePacking::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..31_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }


    #[test]
    fn test_u16s_packed_u32() {
        let values: [u16; 2] = [0, 1];
        let packed = BytePacking::pack(values);
        let unpacked: [u16; 2] = BytePacking::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..2_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_u16s_packed_u64() {
        let values: [u16; 4] = [0, 1, 2, 3];
        let packed = U16sPackedU64::pack(values);
        let unpacked = U16sPackedU64::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..4_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }


    #[test]
    fn test_u16s_packed_u128() {
        let values: [u16; 8] = [0, 1, 2, 3, 4, 5, 6, 7];
        let packed = U16sPackedU128::pack(values);
        let unpacked = U16sPackedU128::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..8_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_u16s_packed_felt252() {
        let values: [u16; 15] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
        let packed = U16sPackedFelt252::pack(values);
        let unpacked = U16sPackedFelt252::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..15_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_i16s_packed_u32() {
        let values: [i16; 2] = [0, -1];
        let packed = I16sPackedU32::pack(values);
        let unpacked = I16sPackedU32::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..2_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_i16s_packed_u64() {
        let values: [i16; 4] = [0, 1, -2, 3];
        let packed = I16sPackedU64::pack(values);
        let unpacked = I16sPackedU64::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..4_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }


    #[test]
    fn test_i16s_packed_u128() {
        let values: [i16; 8] = [0, 1, -2, 3, -4, 5, -6, 7];
        let packed = I16sPackedU128::pack(values);
        let unpacked = I16sPackedU128::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..8_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_i16s_packed_felt252() {
        let values: [i16; 15] = [0, 1, -2, 3, -4, 5, -6, 7, -8, 9, -10, 11, -12, 13, -14];
        let packed = I16sPackedFelt252::pack(values);
        let unpacked = I16sPackedFelt252::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..15_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_u32s_packed_u64() {
        let values: [u32; 2] = [0, 1];
        let packed = U32sPackedU64::pack(values);
        let unpacked = U32sPackedU64::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..2_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_u32s_packed_u128() {
        let values: [u32; 4] = [0, 1, 2, 3];
        let packed = U32sPackedU128::pack(values);
        let unpacked = U32sPackedU128::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..4_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }


    #[test]
    fn test_u32s_packed_felt252() {
        let values: [u32; 7] = [0, 1, 2, 3, 4, 5, 6];
        let packed = U32sPackedFelt252::pack(values);
        let unpacked = U32sPackedFelt252::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..7_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_i32s_packed_u64() {
        let values: [i32; 2] = [0, -1];
        let packed = I32sPackedU64::pack(values);
        let unpacked = I32sPackedU64::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..2_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_i32s_packed_u128() {
        let values: [i32; 4] = [0, -1, 2, -3];
        let packed = I32sPackedU128::pack(values);
        let unpacked = I32sPackedU128::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..4_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_i32s_packed_felt252() {
        let values: [i32; 7] = [0, 1, -2, 3, -4, 5, -6];
        let packed = I32sPackedFelt252::pack(values);
        let unpacked = I32sPackedFelt252::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..7_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_u64s_packed_u128() {
        let values: [u64; 2] = [0, 1];
        let packed = U64sPackedU128::pack(values);
        let unpacked = U64sPackedU128::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..2_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_u64s_packed_felt252() {
        let values: [u64; 3] = [0, 1, 2];
        let packed = U64sPackedFelt252::pack(values);
        let unpacked = U64sPackedFelt252::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..3_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_i64s_packed_u128() {
        let values: [i64; 2] = [0, -1];
        let packed = I64sPackedU128::pack(values);
        let unpacked = I64sPackedU128::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..2_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }

    #[test]
    fn test_i64s_packed_felt252() {
        let values: [i64; 3] = [0, 1, -2];
        let packed = I64sPackedFelt252::pack(values);
        let unpacked = I64sPackedFelt252::unpack(packed);
        let values_span = values.span();
        let unpacked_span = unpacked.span();
        for i in 0..3_usize {
            assert_eq!(
                *values_span[i],
                *unpacked_span[i],
                "Unpacked value does not match the original at index {i}",
            );
        }
    }
}
