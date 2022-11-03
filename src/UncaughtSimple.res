exception Foo
exception Foo2

let raiseFoo = () => raise(Foo)

let () = {
  try {
    // Prevent compiler optimization
    // if ""->String.length > 0 {
    raiseFoo()
    // }
  } catch {
  | Foo2 => ()
  }
}

// Fails to analyze excs in a react component
@react.component
let make = () => {
  <div className="font-semibold dark:text-white"> {React.string(raiseFoo())} </div>
}
