@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  {
    switch url.path {
    | list{} => <Home />
    | list{"uncaught-simple"} => <UncaughtSimple />
    | list{"promise-simple"} => <PromiseSimple />
    | _ => React.string("404")
    }
  }
}
