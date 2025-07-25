use core::pedersen::pedersen;

pub fn pedersen_hash_span(mut span: Span<felt252>) -> felt252 {
    let mut state = 0;
    let len = span.len().into();
    loop {
        match span.pop_front() {
            Option::Some(value) => { state = pedersen(state, *value); },
            Option::None => { break pedersen(state, len); },
        }
    }
}

pub fn pedersen_hash_fixed_array<
    const SIZE: usize, impl ToSpan: ToSpanTrait<[felt252; SIZE], felt252>,
>(
    array: [felt252; SIZE],
) -> felt252 {
    pedersen_hash_span(ToSpan::span(@array))
}
