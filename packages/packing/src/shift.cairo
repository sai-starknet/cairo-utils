pub trait GetShift<U> {
    fn get_shift(bytes: u8) -> U;
}

impl U16GetShifts of GetShift<u16> {
    fn get_shift(bytes: u8) -> u16 {
        match bytes {
            0 => shifts::SHIFT_0B_U16,
            1 => shifts::SHIFT_1B_U16,
            _ => panic!("Shift out of range for u16"),
        }
    }
}

impl U32GetShifts of GetShift<u32> {
    fn get_shift(bytes: u8) -> u32 {
        match bytes {
            0 => shifts::SHIFT_0B_U32,
            1 => shifts::SHIFT_1B_U32,
            2 => shifts::SHIFT_2B_U32,
            3 => shifts::SHIFT_3B_U32,
            _ => panic!("Shift out of range for u32"),
        }
    }
}

impl U64GetShifts of GetShift<u64> {
    fn get_shift(bytes: u8) -> u64 {
        match bytes {
            0 => shifts::SHIFT_0B_U64,
            1 => shifts::SHIFT_1B_U64,
            2 => shifts::SHIFT_2B_U64,
            3 => shifts::SHIFT_3B_U64,
            4 => shifts::SHIFT_4B_U64,
            5 => shifts::SHIFT_5B_U64,
            6 => shifts::SHIFT_6B_U64,
            7 => shifts::SHIFT_7B_U64,
            _ => panic!("Shift out of range for u64"),
        }
    }
}

impl U128GetShifts of GetShift<u128> {
    fn get_shift(bytes: u8) -> u128 {
        match bytes {
            0 => shifts::SHIFT_0B_U128,
            1 => shifts::SHIFT_1B_U128,
            2 => shifts::SHIFT_2B_U128,
            3 => shifts::SHIFT_3B_U128,
            4 => shifts::SHIFT_4B_U128,
            5 => shifts::SHIFT_5B_U128,
            6 => shifts::SHIFT_6B_U128,
            7 => shifts::SHIFT_7B_U128,
            8 => shifts::SHIFT_8B_U128,
            9 => shifts::SHIFT_9B_U128,
            10 => shifts::SHIFT_10B_U128,
            11 => shifts::SHIFT_11B_U128,
            12 => shifts::SHIFT_12B_U128,
            13 => shifts::SHIFT_13B_U128,
            14 => shifts::SHIFT_14B_U128,
            15 => shifts::SHIFT_15B_U128,
            _ => panic!("Shift out of range for u128"),
        }
    }
}


impl U256GetShift of GetShift<u256> {
    fn get_shift(bytes: u8) -> u256 {
        match bytes {
            0 => shifts::SHIFT_0B_U256,
            1 => shifts::SHIFT_1B_U256,
            2 => shifts::SHIFT_2B_U256,
            3 => shifts::SHIFT_3B_U256,
            4 => shifts::SHIFT_4B_U256,
            5 => shifts::SHIFT_5B_U256,
            6 => shifts::SHIFT_6B_U256,
            7 => shifts::SHIFT_7B_U256,
            8 => shifts::SHIFT_8B_U256,
            9 => shifts::SHIFT_9B_U256,
            10 => shifts::SHIFT_10B_U256,
            11 => shifts::SHIFT_11B_U256,
            12 => shifts::SHIFT_12B_U256,
            13 => shifts::SHIFT_13B_U256,
            14 => shifts::SHIFT_14B_U256,
            15 => shifts::SHIFT_15B_U256,
            16 => shifts::SHIFT_16B_U256,
            17 => shifts::SHIFT_17B_U256,
            18 => shifts::SHIFT_18B_U256,
            19 => shifts::SHIFT_19B_U256,
            20 => shifts::SHIFT_20B_U256,
            21 => shifts::SHIFT_21B_U256,
            22 => shifts::SHIFT_22B_U256,
            23 => shifts::SHIFT_23B_U256,
            24 => shifts::SHIFT_24B_U256,
            25 => shifts::SHIFT_25B_U256,
            26 => shifts::SHIFT_26B_U256,
            27 => shifts::SHIFT_27B_U256,
            28 => shifts::SHIFT_28B_U256,
            29 => shifts::SHIFT_29B_U256,
            30 => shifts::SHIFT_30B_U256,
            31 => shifts::SHIFT_31B_U256,
            _ => panic!("Shift out of range for u256"),
        }
    }
}

impl Felt252GetShift of GetShift<felt252> {
    fn get_shift(bytes: u8) -> felt252 {
        match bytes {
            0 => shifts::SHIFT_0B_FELT252,
            1 => shifts::SHIFT_1B_FELT252,
            2 => shifts::SHIFT_2B_FELT252,
            3 => shifts::SHIFT_3B_FELT252,
            4 => shifts::SHIFT_4B_FELT252,
            5 => shifts::SHIFT_5B_FELT252,
            6 => shifts::SHIFT_6B_FELT252,
            7 => shifts::SHIFT_7B_FELT252,
            8 => shifts::SHIFT_8B_FELT252,
            9 => shifts::SHIFT_9B_FELT252,
            10 => shifts::SHIFT_10B_FELT252,
            11 => shifts::SHIFT_11B_FELT252,
            12 => shifts::SHIFT_12B_FELT252,
            13 => shifts::SHIFT_13B_FELT252,
            14 => shifts::SHIFT_14B_FELT252,
            15 => shifts::SHIFT_15B_FELT252,
            16 => shifts::SHIFT_16B_FELT252,
            17 => shifts::SHIFT_17B_FELT252,
            18 => shifts::SHIFT_18B_FELT252,
            19 => shifts::SHIFT_19B_FELT252,
            20 => shifts::SHIFT_20B_FELT252,
            21 => shifts::SHIFT_21B_FELT252,
            22 => shifts::SHIFT_22B_FELT252,
            23 => shifts::SHIFT_23B_FELT252,
            24 => shifts::SHIFT_24B_FELT252,
            25 => shifts::SHIFT_25B_FELT252,
            26 => shifts::SHIFT_26B_FELT252,
            27 => shifts::SHIFT_27B_FELT252,
            28 => shifts::SHIFT_28B_FELT252,
            29 => shifts::SHIFT_29B_FELT252,
            30 => shifts::SHIFT_30B_FELT252,
            _ => panic!("Shift out of range for felt252"),
        }
    }
}
