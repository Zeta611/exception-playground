// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Caml_exceptions from "../node_modules/rescript/lib/es6/caml_exceptions.js";
import * as Caml_js_exceptions from "../node_modules/rescript/lib/es6/caml_js_exceptions.js";

var Foo = /* @__PURE__ */Caml_exceptions.create("UncaughtSimple.Foo");

var Foo2 = /* @__PURE__ */Caml_exceptions.create("UncaughtSimple.Foo2");

function raiseFoo(param) {
  throw {
        RE_EXN_ID: Foo,
        Error: new Error()
      };
}

try {
  throw {
        RE_EXN_ID: Foo,
        Error: new Error()
      };
}
catch (raw_exn){
  var exn = Caml_js_exceptions.internalToOCamlException(raw_exn);
  if (exn.RE_EXN_ID !== Foo2 && exn.RE_EXN_ID !== Foo) {
    throw exn;
  }
  
}

function UncaughtSimple(Props) {
  throw {
        RE_EXN_ID: Foo,
        Error: new Error()
      };
  return React.createElement("div", {
              className: "font-semibold dark:text-white"
            }, undefined);
}

var make = UncaughtSimple;

export {
  Foo ,
  Foo2 ,
  raiseFoo ,
  make ,
}
/*  Not a pure module */
