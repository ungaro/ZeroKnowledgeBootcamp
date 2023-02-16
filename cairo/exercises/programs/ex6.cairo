from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin, HashBuiltin



// Implement a function that sums even numbers from the provided array
func sum_even{bitwise_ptr: BitwiseBuiltin*}(arr_len: felt, arr: felt*, run: felt, idx: felt) -> (
    sum: felt
) {
     if (arr_len == 0){
        return (0,);
    }

    let (sum_of_even) = sum_even(arr_len=arr_len - 1, arr = arr + 1, run = run, idx = idx);
    let (is_even) = bitwise_and(arr[0], 1);

    if (is_even == 0){
        let new_sum = arr[0] + sum_of_even;
        return (sum = new_sum); 
    } else {
        return (sum = sum_of_even);
    }

}
