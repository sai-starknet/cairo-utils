pub mod neg_bits {
    use core::num::traits::Pow;

    pub const I8_NEG_BIT: u8 = 0x80;
    pub const I16_NEG_BIT: u16 = 0x8000;
    pub const I32_NEG_BIT: u32 = 2_u32.pow(31);
    pub const I64_NEG_BIT: u64 = 2_u64.pow(63);
    pub const I128_NEG_BIT: u128 = 2_u128.pow(127);
}

pub mod shifts {
    use core::num::traits::Pow;

    pub const SHIFT_0B: u8 = 1;
    pub const SHIFT_1B: u16 = 2_u16.pow(8);
    pub const SHIFT_2B: u32 = 2_u32.pow(16);
    pub const SHIFT_3B: u32 = 2_u32.pow(24);
    pub const SHIFT_4B: u64 = 2_u64.pow(32);
    pub const SHIFT_5B: u64 = 2_u64.pow(40);
    pub const SHIFT_6B: u64 = 2_u64.pow(48);
    pub const SHIFT_7B: u64 = 2_u64.pow(56);
    pub const SHIFT_8B: u128 = 2_u128.pow(64);
    pub const SHIFT_9B: u128 = 2_u128.pow(72);
    pub const SHIFT_10B: u128 = 2_u128.pow(80);
    pub const SHIFT_11B: u128 = 2_u128.pow(88);
    pub const SHIFT_12B: u128 = 2_u128.pow(96);
    pub const SHIFT_13B: u128 = 2_u128.pow(104);
    pub const SHIFT_14B: u128 = 2_u128.pow(112);
    pub const SHIFT_15B: u128 = 2_u128.pow(120);
    pub const SHIFT_16B: u256 = 2_u256.pow(128);
    pub const SHIFT_17B: u256 = 2_u256.pow(136);
    pub const SHIFT_18B: u256 = 2_u256.pow(144);
    pub const SHIFT_19B: u256 = 2_u256.pow(152);
    pub const SHIFT_20B: u256 = 2_u256.pow(160);
    pub const SHIFT_21B: u256 = 2_u256.pow(168);
    pub const SHIFT_22B: u256 = 2_u256.pow(176);
    pub const SHIFT_23B: u256 = 2_u256.pow(184);
    pub const SHIFT_24B: u256 = 2_u256.pow(192);
    pub const SHIFT_25B: u256 = 2_u256.pow(200);
    pub const SHIFT_26B: u256 = 2_u256.pow(208);
    pub const SHIFT_27B: u256 = 2_u256.pow(216);
    pub const SHIFT_28B: u256 = 2_u256.pow(224);
    pub const SHIFT_29B: u256 = 2_u256.pow(232);
    pub const SHIFT_30B: u256 = 2_u256.pow(240);
    pub const SHIFT_31B: u256 = 2_u256.pow(248);

    pub const SHIFT_0B_FELT252: felt252 = SHIFT_0B.into();
    pub const SHIFT_1B_FELT252: felt252 = SHIFT_1B.into();
    pub const SHIFT_2B_FELT252: felt252 = SHIFT_2B.into();
    pub const SHIFT_3B_FELT252: felt252 = SHIFT_3B.into();
    pub const SHIFT_4B_FELT252: felt252 = SHIFT_4B.into();
    pub const SHIFT_5B_FELT252: felt252 = SHIFT_5B.into();
    pub const SHIFT_6B_FELT252: felt252 = SHIFT_6B.into();
    pub const SHIFT_7B_FELT252: felt252 = SHIFT_7B.into();
    pub const SHIFT_8B_FELT252: felt252 = SHIFT_8B.into();
    pub const SHIFT_9B_FELT252: felt252 = SHIFT_9B.into();
    pub const SHIFT_10B_FELT252: felt252 = SHIFT_10B.into();
    pub const SHIFT_11B_FELT252: felt252 = SHIFT_11B.into();
    pub const SHIFT_12B_FELT252: felt252 = SHIFT_12B.into();
    pub const SHIFT_13B_FELT252: felt252 = SHIFT_13B.into();
    pub const SHIFT_14B_FELT252: felt252 = SHIFT_14B.into();
    pub const SHIFT_15B_FELT252: felt252 = SHIFT_15B.into();
    pub const SHIFT_16B_FELT252: felt252 = SHIFT_16B.try_into().unwrap();
    pub const SHIFT_17B_FELT252: felt252 = SHIFT_17B.try_into().unwrap();
    pub const SHIFT_18B_FELT252: felt252 = SHIFT_18B.try_into().unwrap();
    pub const SHIFT_19B_FELT252: felt252 = SHIFT_19B.try_into().unwrap();
    pub const SHIFT_20B_FELT252: felt252 = SHIFT_20B.try_into().unwrap();
    pub const SHIFT_21B_FELT252: felt252 = SHIFT_21B.try_into().unwrap();
    pub const SHIFT_22B_FELT252: felt252 = SHIFT_22B.try_into().unwrap();
    pub const SHIFT_23B_FELT252: felt252 = SHIFT_23B.try_into().unwrap();
    pub const SHIFT_24B_FELT252: felt252 = SHIFT_24B.try_into().unwrap();
    pub const SHIFT_25B_FELT252: felt252 = SHIFT_25B.try_into().unwrap();
    pub const SHIFT_26B_FELT252: felt252 = SHIFT_26B.try_into().unwrap();
    pub const SHIFT_27B_FELT252: felt252 = SHIFT_27B.try_into().unwrap();
    pub const SHIFT_28B_FELT252: felt252 = SHIFT_28B.try_into().unwrap();
    pub const SHIFT_29B_FELT252: felt252 = SHIFT_29B.try_into().unwrap();
    pub const SHIFT_30B_FELT252: felt252 = SHIFT_30B.try_into().unwrap();
    pub const SHIFT_31B_FELT252: felt252 = SHIFT_31B.try_into().unwrap();

    pub const SHIFTS_FELT252: [felt252; 32] = [
        SHIFT_0B_FELT252, SHIFT_1B_FELT252, SHIFT_2B_FELT252, SHIFT_3B_FELT252, SHIFT_4B_FELT252,
        SHIFT_5B_FELT252, SHIFT_6B_FELT252, SHIFT_7B_FELT252, SHIFT_8B_FELT252, SHIFT_9B_FELT252,
        SHIFT_10B_FELT252, SHIFT_11B_FELT252, SHIFT_12B_FELT252, SHIFT_13B_FELT252,
        SHIFT_14B_FELT252, SHIFT_15B_FELT252, SHIFT_16B_FELT252, SHIFT_17B_FELT252,
        SHIFT_18B_FELT252, SHIFT_19B_FELT252, SHIFT_20B_FELT252, SHIFT_21B_FELT252,
        SHIFT_22B_FELT252, SHIFT_23B_FELT252, SHIFT_24B_FELT252, SHIFT_25B_FELT252,
        SHIFT_26B_FELT252, SHIFT_27B_FELT252, SHIFT_28B_FELT252, SHIFT_29B_FELT252,
        SHIFT_30B_FELT252, SHIFT_31B_FELT252,
    ];


    pub const SHIFT_0B_U16: u16 = SHIFT_0B.into();
    pub const SHIFT_1B_U16: u16 = SHIFT_1B;

    pub const SHIFTS_U16: [u16; 2] = [SHIFT_0B_U16, SHIFT_1B_U16];

    pub const SHIFT_0B_U32: u32 = SHIFT_0B.into();
    pub const SHIFT_1B_U32: u32 = SHIFT_1B.into();
    pub const SHIFT_2B_U32: u32 = SHIFT_2B;
    pub const SHIFT_3B_U32: u32 = SHIFT_3B;

    pub const SHIFTS_U32: [u32; 4] = [SHIFT_0B_U32, SHIFT_1B_U32, SHIFT_2B_U32, SHIFT_3B_U32];

    pub const SHIFT_0B_U64: u64 = SHIFT_0B.into();
    pub const SHIFT_1B_U64: u64 = SHIFT_1B.into();
    pub const SHIFT_2B_U64: u64 = SHIFT_2B.into();
    pub const SHIFT_3B_U64: u64 = SHIFT_3B.into();
    pub const SHIFT_4B_U64: u64 = SHIFT_4B;
    pub const SHIFT_5B_U64: u64 = SHIFT_5B;
    pub const SHIFT_6B_U64: u64 = SHIFT_6B;
    pub const SHIFT_7B_U64: u64 = SHIFT_7B;

    pub const SHIFTS_U64: [u64; 8] = [
        SHIFT_0B_U64, SHIFT_1B_U64, SHIFT_2B_U64, SHIFT_3B_U64, SHIFT_4B_U64, SHIFT_5B_U64,
        SHIFT_6B_U64, SHIFT_7B_U64,
    ];

    pub const SHIFT_0B_U128: u128 = SHIFT_0B.into();
    pub const SHIFT_1B_U128: u128 = SHIFT_1B.into();
    pub const SHIFT_2B_U128: u128 = SHIFT_2B.into();
    pub const SHIFT_3B_U128: u128 = SHIFT_3B.into();
    pub const SHIFT_4B_U128: u128 = SHIFT_4B.into();
    pub const SHIFT_5B_U128: u128 = SHIFT_5B.into();
    pub const SHIFT_6B_U128: u128 = SHIFT_6B.into();
    pub const SHIFT_7B_U128: u128 = SHIFT_7B.into();
    pub const SHIFT_8B_U128: u128 = SHIFT_8B;
    pub const SHIFT_9B_U128: u128 = SHIFT_9B;
    pub const SHIFT_10B_U128: u128 = SHIFT_10B;
    pub const SHIFT_11B_U128: u128 = SHIFT_11B;
    pub const SHIFT_12B_U128: u128 = SHIFT_12B;
    pub const SHIFT_13B_U128: u128 = SHIFT_13B;
    pub const SHIFT_14B_U128: u128 = SHIFT_14B;
    pub const SHIFT_15B_U128: u128 = SHIFT_15B;

    pub const SHIFTS_U128: [u128; 16] = [
        SHIFT_0B_U128, SHIFT_1B_U128, SHIFT_2B_U128, SHIFT_3B_U128, SHIFT_4B_U128, SHIFT_5B_U128,
        SHIFT_6B_U128, SHIFT_7B_U128, SHIFT_8B_U128, SHIFT_9B_U128, SHIFT_10B_U128, SHIFT_11B_U128,
        SHIFT_12B_U128, SHIFT_13B_U128, SHIFT_14B_U128, SHIFT_15B_U128,
    ];

    pub const SHIFT_0B_U256: u256 = SHIFT_0B.into();
    pub const SHIFT_1B_U256: u256 = SHIFT_1B.into();
    pub const SHIFT_2B_U256: u256 = SHIFT_2B.into();
    pub const SHIFT_3B_U256: u256 = SHIFT_3B.into();
    pub const SHIFT_4B_U256: u256 = SHIFT_4B.into();
    pub const SHIFT_5B_U256: u256 = SHIFT_5B.into();
    pub const SHIFT_6B_U256: u256 = SHIFT_6B.into();
    pub const SHIFT_7B_U256: u256 = SHIFT_7B.into();
    pub const SHIFT_8B_U256: u256 = SHIFT_8B.into();
    pub const SHIFT_9B_U256: u256 = SHIFT_9B.into();
    pub const SHIFT_10B_U256: u256 = SHIFT_10B.into();
    pub const SHIFT_11B_U256: u256 = SHIFT_11B.into();
    pub const SHIFT_12B_U256: u256 = SHIFT_12B.into();
    pub const SHIFT_13B_U256: u256 = SHIFT_13B.into();
    pub const SHIFT_14B_U256: u256 = SHIFT_14B.into();
    pub const SHIFT_15B_U256: u256 = SHIFT_15B.into();
    pub const SHIFT_16B_U256: u256 = SHIFT_16B;
    pub const SHIFT_17B_U256: u256 = SHIFT_17B;
    pub const SHIFT_18B_U256: u256 = SHIFT_18B;
    pub const SHIFT_19B_U256: u256 = SHIFT_19B;
    pub const SHIFT_20B_U256: u256 = SHIFT_20B;
    pub const SHIFT_21B_U256: u256 = SHIFT_21B;
    pub const SHIFT_22B_U256: u256 = SHIFT_22B;
    pub const SHIFT_23B_U256: u256 = SHIFT_23B;
    pub const SHIFT_24B_U256: u256 = SHIFT_24B;
    pub const SHIFT_25B_U256: u256 = SHIFT_25B;
    pub const SHIFT_26B_U256: u256 = SHIFT_26B;
    pub const SHIFT_27B_U256: u256 = SHIFT_27B;
    pub const SHIFT_28B_U256: u256 = SHIFT_28B;
    pub const SHIFT_29B_U256: u256 = SHIFT_29B;
    pub const SHIFT_30B_U256: u256 = SHIFT_30B;
    pub const SHIFT_31B_U256: u256 = SHIFT_31B;

    pub const SHIFTS_U256: [u256; 32] = [
        SHIFT_0B_U256, SHIFT_1B_U256, SHIFT_2B_U256, SHIFT_3B_U256, SHIFT_4B_U256, SHIFT_5B_U256,
        SHIFT_6B_U256, SHIFT_7B_U256, SHIFT_8B_U256, SHIFT_9B_U256, SHIFT_10B_U256, SHIFT_11B_U256,
        SHIFT_12B_U256, SHIFT_13B_U256, SHIFT_14B_U256, SHIFT_15B_U256, SHIFT_16B_U256,
        SHIFT_17B_U256, SHIFT_18B_U256, SHIFT_19B_U256, SHIFT_20B_U256, SHIFT_21B_U256,
        SHIFT_22B_U256, SHIFT_23B_U256, SHIFT_24B_U256, SHIFT_25B_U256, SHIFT_26B_U256,
        SHIFT_27B_U256, SHIFT_28B_U256, SHIFT_29B_U256, SHIFT_30B_U256, SHIFT_31B_U256,
    ];
}

pub mod masks {
    use core::num::traits::Bounded;
    use super::shifts::*;

    pub const MASK_1B: u8 = Bounded::MAX;
    pub const MASK_2B: u16 = Bounded::MAX;
    pub const MASK_3B: u32 = SHIFT_3B - 1;
    pub const MASK_4B: u32 = Bounded::MAX;
    pub const MASK_5B: u64 = SHIFT_5B - 1;
    pub const MASK_6B: u64 = SHIFT_6B - 1;
    pub const MASK_7B: u64 = SHIFT_7B - 1;
    pub const MASK_8B: u64 = Bounded::MAX;
    pub const MASK_9B: u128 = SHIFT_9B - 1;
    pub const MASK_10B: u128 = SHIFT_10B - 1;
    pub const MASK_11B: u128 = SHIFT_11B - 1;
    pub const MASK_12B: u128 = SHIFT_12B - 1;
    pub const MASK_13B: u128 = SHIFT_13B - 1;
    pub const MASK_14B: u128 = SHIFT_14B - 1;
    pub const MASK_15B: u128 = SHIFT_15B - 1;
    pub const MASK_16B: u128 = Bounded::MAX;
    pub const MASK_17B: u256 = SHIFT_17B - 1;
    pub const MASK_18B: u256 = SHIFT_18B - 1;
    pub const MASK_19B: u256 = SHIFT_19B - 1;
    pub const MASK_20B: u256 = SHIFT_20B - 1;
    pub const MASK_21B: u256 = SHIFT_21B - 1;
    pub const MASK_22B: u256 = SHIFT_22B - 1;
    pub const MASK_23B: u256 = SHIFT_23B - 1;
    pub const MASK_24B: u256 = SHIFT_24B - 1;
    pub const MASK_25B: u256 = SHIFT_25B - 1;
    pub const MASK_26B: u256 = SHIFT_26B - 1;
    pub const MASK_27B: u256 = SHIFT_27B - 1;
    pub const MASK_28B: u256 = SHIFT_28B - 1;
    pub const MASK_29B: u256 = SHIFT_29B - 1;
    pub const MASK_30B: u256 = SHIFT_30B - 1;
    pub const MASK_31B: u256 = SHIFT_31B - 1;
    pub const MASK_32B: u256 = Bounded::MAX;


    pub const MASK_1B_U8: u8 = MASK_1B;

    pub const MASK_1B_U16: u16 = MASK_1B.into();
    pub const MASK_2B_U16: u16 = MASK_2B;

    pub const MASK_1B_U32: u32 = MASK_1B.into();
    pub const MASK_2B_U32: u32 = MASK_2B.into();
    pub const MASK_3B_U32: u32 = MASK_3B;
    pub const MASK_4B_U32: u32 = MASK_4B;

    pub const MASK_1B_U64: u64 = MASK_1B.into();
    pub const MASK_2B_U64: u64 = MASK_2B.into();
    pub const MASK_3B_U64: u64 = MASK_3B.into();
    pub const MASK_4B_U64: u64 = MASK_4B.into();
    pub const MASK_5B_U64: u64 = MASK_5B;
    pub const MASK_6B_U64: u64 = MASK_6B;
    pub const MASK_7B_U64: u64 = MASK_7B;
    pub const MASK_8B_U64: u64 = MASK_8B;

    pub const MASK_1B_U128: u128 = MASK_1B.into();
    pub const MASK_2B_U128: u128 = MASK_2B.into();
    pub const MASK_3B_U128: u128 = MASK_3B.into();
    pub const MASK_4B_U128: u128 = MASK_4B.into();
    pub const MASK_5B_U128: u128 = MASK_5B.into();
    pub const MASK_6B_U128: u128 = MASK_6B.into();
    pub const MASK_7B_U128: u128 = MASK_7B.into();
    pub const MASK_8B_U128: u128 = MASK_8B.into();
    pub const MASK_9B_U128: u128 = MASK_9B;
    pub const MASK_10B_U128: u128 = MASK_10B;
    pub const MASK_11B_U128: u128 = MASK_11B;
    pub const MASK_12B_U128: u128 = MASK_12B;
    pub const MASK_13B_U128: u128 = MASK_13B;
    pub const MASK_14B_U128: u128 = MASK_14B;
    pub const MASK_15B_U128: u128 = MASK_15B;
    pub const MASK_16B_U128: u128 = MASK_16B;

    pub const MASK_1B_FELT252: felt252 = MASK_1B.into();
    pub const MASK_2B_FELT252: felt252 = MASK_2B.into();
    pub const MASK_3B_FELT252: felt252 = MASK_3B.into();
    pub const MASK_4B_FELT252: felt252 = MASK_4B.into();
    pub const MASK_5B_FELT252: felt252 = MASK_5B.into();
    pub const MASK_6B_FELT252: felt252 = MASK_6B.into();
    pub const MASK_7B_FELT252: felt252 = MASK_7B.into();
    pub const MASK_8B_FELT252: felt252 = MASK_8B.into();
    pub const MASK_9B_FELT252: felt252 = MASK_9B.into();
    pub const MASK_10B_FELT252: felt252 = MASK_10B.into();
    pub const MASK_11B_FELT252: felt252 = MASK_11B.into();
    pub const MASK_12B_FELT252: felt252 = MASK_12B.into();
    pub const MASK_13B_FELT252: felt252 = MASK_13B.into();
    pub const MASK_14B_FELT252: felt252 = MASK_14B.into();
    pub const MASK_15B_FELT252: felt252 = MASK_15B.into();
    pub const MASK_16B_FELT252: felt252 = MASK_16B.into();
    pub const MASK_17B_FELT252: felt252 = MASK_17B.try_into().unwrap();
    pub const MASK_18B_FELT252: felt252 = MASK_18B.try_into().unwrap();
    pub const MASK_19B_FELT252: felt252 = MASK_19B.try_into().unwrap();
    pub const MASK_20B_FELT252: felt252 = MASK_20B.try_into().unwrap();
    pub const MASK_21B_FELT252: felt252 = MASK_21B.try_into().unwrap();
    pub const MASK_22B_FELT252: felt252 = MASK_22B.try_into().unwrap();
    pub const MASK_23B_FELT252: felt252 = MASK_23B.try_into().unwrap();
    pub const MASK_24B_FELT252: felt252 = MASK_24B.try_into().unwrap();
    pub const MASK_25B_FELT252: felt252 = MASK_25B.try_into().unwrap();
    pub const MASK_26B_FELT252: felt252 = MASK_26B.try_into().unwrap();
    pub const MASK_27B_FELT252: felt252 = MASK_27B.try_into().unwrap();
    pub const MASK_28B_FELT252: felt252 = MASK_28B.try_into().unwrap();
    pub const MASK_29B_FELT252: felt252 = MASK_29B.try_into().unwrap();
    pub const MASK_30B_FELT252: felt252 = MASK_30B.try_into().unwrap();
    pub const MASK_31B_FELT252: felt252 = MASK_31B.try_into().unwrap();

    pub const MASK_1B_U256: u256 = MASK_1B.into();
    pub const MASK_2B_U256: u256 = MASK_2B.into();
    pub const MASK_3B_U256: u256 = MASK_3B.into();
    pub const MASK_4B_U256: u256 = MASK_4B.into();
    pub const MASK_5B_U256: u256 = MASK_5B.into();
    pub const MASK_6B_U256: u256 = MASK_6B.into();
    pub const MASK_7B_U256: u256 = MASK_7B.into();
    pub const MASK_8B_U256: u256 = MASK_8B.into();
    pub const MASK_9B_U256: u256 = MASK_9B.into();
    pub const MASK_10B_U256: u256 = MASK_10B.into();
    pub const MASK_11B_U256: u256 = MASK_11B.into();
    pub const MASK_12B_U256: u256 = MASK_12B.into();
    pub const MASK_13B_U256: u256 = MASK_13B.into();
    pub const MASK_14B_U256: u256 = MASK_14B.into();
    pub const MASK_15B_U256: u256 = MASK_15B.into();
    pub const MASK_16B_U256: u256 = MASK_16B.into();
    pub const MASK_17B_U256: u256 = MASK_17B;
    pub const MASK_18B_U256: u256 = MASK_18B;
    pub const MASK_19B_U256: u256 = MASK_19B;
    pub const MASK_20B_U256: u256 = MASK_20B;
    pub const MASK_21B_U256: u256 = MASK_21B;
    pub const MASK_22B_U256: u256 = MASK_22B;
    pub const MASK_23B_U256: u256 = MASK_23B;
    pub const MASK_24B_U256: u256 = MASK_24B;
    pub const MASK_25B_U256: u256 = MASK_25B;
    pub const MASK_26B_U256: u256 = MASK_26B;
    pub const MASK_27B_U256: u256 = MASK_27B;
    pub const MASK_28B_U256: u256 = MASK_28B;
    pub const MASK_29B_U256: u256 = MASK_29B;
    pub const MASK_30B_U256: u256 = MASK_30B;
    pub const MASK_31B_U256: u256 = MASK_31B;
    pub const MASK_32B_U256: u256 = MASK_32B;
}
