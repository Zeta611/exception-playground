@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  {
    switch url.path {
    | list{} => <Home />
    | list{"uncaught-simple"} => <UncaughtSimple />
    | _ => React.string("404")
    }
  }
}
