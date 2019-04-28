// Generated by BUCKLESCRIPT VERSION 5.0.3, PLEASE EDIT WITH CARE

import * as Block from "../../../node_modules/bs-platform/lib/es6/block.js";
import * as React from "react";
import * as Caml_int32 from "../../../node_modules/bs-platform/lib/es6/caml_int32.js";
import * as MaterialUi_WithStyles from "../../../node_modules/@jsiebern/bs-material-ui/src/MaterialUi_WithStyles.bs.js";
import * as ColorManipulator from "@material-ui/core/styles/colorManipulator";

function classRecordToJs(param) {
  return {
          root: param[/* root */0],
          grow: param[/* grow */1],
          menuButton: param[/* menuButton */2],
          title: param[/* title */3],
          search: param[/* search */4],
          searchIcon: param[/* searchIcon */5],
          inputRoot: param[/* inputRoot */6],
          inputInput: param[/* inputInput */7]
        };
}

var classes = /* ThemeFunc */Block.variant("ThemeFunc", 1, [(function (theme) {
        var spacing = theme.spacing.unit | 0;
        return /* record */Block.record([
                  "root",
                  "grow",
                  "menuButton",
                  "title",
                  "search",
                  "searchIcon",
                  "inputRoot",
                  "inputInput"
                ], [
                  {
                    width: "100%"
                  },
                  {
                    flexGrow: "1"
                  },
                  {
                    marginRight: "20px",
                    marginLeft: "-12px"
                  },
                  {
                    display: "none"
                  },
                  {
                    backgroundColor: ColorManipulator.fade(theme.palette.common.white, 0.15),
                    marginLeft: "0px",
                    position: "relative",
                    width: "100%",
                    borderRadius: String(theme.shape.borderRadius | 0) + "px"
                  },
                  {
                    display: "flex",
                    height: "100%",
                    position: "absolute",
                    width: String(Caml_int32.imul(theme.spacing.unit | 0, 9)) + "px",
                    alignItems: "center",
                    justifyContent: "center",
                    pointerEvents: "none"
                  },
                  {
                    color: "inherit",
                    width: "100%"
                  },
                  {
                    paddingTop: String(spacing) + "px",
                    paddingRight: String(spacing) + "px",
                    paddingBottom: String(spacing) + "px",
                    paddingLeft: String(Caml_int32.imul(spacing, 10)) + "px",
                    width: "100%"
                  }
                ]);
      })]);

function classRecordStringsFromJs(arg) {
  return /* record */Block.record([
            "root",
            "grow",
            "menuButton",
            "title",
            "search",
            "searchIcon",
            "inputRoot",
            "inputInput"
          ], [
            arg.root,
            arg.grow,
            arg.menuButton,
            arg.title,
            arg.search,
            arg.searchIcon,
            arg.inputRoot,
            arg.inputInput
          ]);
}

var StylesDefs = /* module */Block.localModule([
    "classRecordToJs",
    "classRecordStringsFromJs",
    "classes"
  ], [
    classRecordToJs,
    classRecordStringsFromJs,
    classes
  ]);

var Styles = MaterialUi_WithStyles.WithStylesSafe(StylesDefs);

function Layout_Header(Props) {
  return React.createElement(Styles[/* make */3], {
              children: (function (classes) {
                  return React.createElement("div", {
                              className: classes[/* root */0]
                            });
                })
            });
}

var make = Layout_Header;

export {
  StylesDefs ,
  Styles ,
  make ,
  
}
/* Styles Not a pure module */
