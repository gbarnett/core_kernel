(* This module is trying to minimize dependencies on modules in Core, so as to allow
   [Error] and [Or_error] to be used in various places.  Please avoid adding new
   dependencies. *)

include Info

let raise t = raise (to_exn t)

let failwiths      message a sexp_of_a = raise (create       message a sexp_of_a)
let failwithp here message a sexp_of_a = raise (create ~here message a sexp_of_a)

let () = Pretty_printer.register "Core.Error.pp"
