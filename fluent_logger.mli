type t

val create_for_inet :
  ?bufsize:int -> ?conn_timeout:int -> ?host:string -> ?port:int -> unit -> t

val create :
  ?bufsize:int -> ?conn_timeout:int -> ?host:string -> ?port:int -> unit -> t

val post_with_time : t -> string -> Msgpack.Serialize.t -> int64 -> bool

val post : t -> string -> Msgpack.Serialize.t -> bool

val release : t -> unit

val of_string : string -> [> `FixRaw of char list ]

val uint8_of_int : 'a -> [> `Uint8 of 'a ]

val uint16_of_int : 'a -> [> `Uint16 of 'a ]

val uint32_of_int : int -> [> `Uint32 of int64 ]

val uint64_of_int : int -> [> `Uint64 of int64 ]

val int8_of_int : 'a -> [> `Int8 of 'a ]

val int16_of_int : 'a -> [> `Int16 of 'a ]

val int32_of_int : int -> [> `Int32 of int64 ]

val int64_of_int : int -> [> `Int64 of int64 ]

val of_float : 'a -> [> `Float of 'a ]

val of_double : 'a -> [> `Double of 'a ]
