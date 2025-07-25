use core::pedersen::pedersen;

pub const PEDERSEN_ZERO_ZERO: felt252 =
    0x49ee3eba8c1600700ee1b87eb599f16716b0b1022947733551fde4050ca6804;

pub fn pedersen_span_hash(mut span: Span<felt252>) -> felt252 {
    let mut state = 0;
    let len = span.len().into();
    loop {
        match span.pop_front() {
            Option::Some(value) => { state = pedersen(state, *value); },
            Option::None => { break pedersen(state, len); },
        }
    }
}

pub fn pedersen_fixed_array_hash<
    const SIZE: usize, impl ToSpan: ToSpanTrait<[felt252; SIZE], felt252>,
>(
    array: [felt252; SIZE],
) -> felt252 {
    pedersen_span_hash(ToSpan::span(@array))
}
