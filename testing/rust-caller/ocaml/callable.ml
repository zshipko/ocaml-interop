let increment_bytes bytes first_n =
  let limit = (min (Bytes.length bytes) first_n) - 1 in
  for i = 0 to limit do
    let value = (Bytes.get_uint8 bytes i) + 1 in
    Bytes.set_uint8 bytes i value
  done;
  bytes

let decrement_bytes bytes first_n =
    let limit = (min (Bytes.length bytes) first_n) - 1 in
    for i = 0 to limit do
      let value = (Bytes.get_uint8 bytes i) - 1 in
      Bytes.set_uint8 bytes i value
    done;
    bytes

let increment_ints_list ints =
  List.map ((+) 1) ints

let twice x = 2 * x

let make_tuple a b = (a, b)

let () =
  Callback.register "increment_bytes" increment_bytes;
  Callback.register "decrement_bytes" decrement_bytes;
  Callback.register "increment_ints_list" increment_ints_list;
  Callback.register "twice" twice;
  Callback.register "make_tuple" make_tuple