// Task:
// Develop a function that is going to calculate Pedersen hash of an array of felts.
// Cairo's built in hash2 can calculate Pedersen hash on two field elements.
// To calculate hash of an array use hash chain algorith where hash of [1, 2, 3, 4] is is H(H(H(1, 2), 3), 4).

from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.hash import hash2

// Computes the Pedersen hash chain on an array of size `arr_len` starting from `arr_ptr`.
func hash_chain{hash_ptr: HashBuiltin*}(arr_ptr: felt*, arr_len: felt) -> (result: felt) {
    if (arr_len == 2) {
        return hash2([arr_ptr], [arr_ptr + 1]); 
    }

    let (hash) = hash_chain(arr_ptr, arr_len - 1);
    return hash2(hash, [arr_ptr + arr_len - 1]);



}
