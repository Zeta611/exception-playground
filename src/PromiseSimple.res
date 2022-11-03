let p = Promise.make((resolve, _reject) => {
  Js.log("Inside a promise")
  resolve(. "chain me!")
})

let () =
  p
  ->Promise.then(msg => {
    Js.log(msg)
    Promise.resolve()
  })
  ->ignore

exception PromiseFoo(string)
// Fails to analyze excs in a promise
let () = p->Promise.then(msg => Promise.reject(PromiseFoo(msg)))->ignore

@react.component
let make = () => {
  <div className="font-semibold dark:text-white"> {React.string("Promise")} </div>
}
