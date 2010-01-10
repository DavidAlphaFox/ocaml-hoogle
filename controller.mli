type t =
    String of string
  | Bool   of bool
  | Table  of (string * t) list

val format : Config.t list -> Search.t -> (string * t) list