[@bs.val] [@bs.module "@material-ui/core/styles/colorManipulator"]
external fade: (string, float) => string = "fade";

[%mui.withStyles
  "Styles"(theme => {
    let spacing =
      theme
      |> MaterialUi.Theme.Theme.spacingGet
      |> MaterialUi.Theme.Spacing.unitGet
      |> int_of_float;

    {
      root: ReactDOMRe.Style.make(~width="100%", ()),
      grow: ReactDOMRe.Style.make(~flexGrow="1", ()),
      menuButton:
        ReactDOMRe.Style.make(~marginLeft="-12px", ~marginRight="20px", ()),
      title:
        ReactDOMRe.Style.make(
          ~display="none",
          // [theme.breakpoints.up('sm')]: {
          //   ~display='block',
          // },
          (),
        ),
      search:
        ReactDOMRe.Style.make(
          ~position="relative",
          ~borderRadius=
            (
              theme
              |> MaterialUi.Theme.Theme.shapeGet
              |> MaterialUi.Theme.Shape.borderRadiusGet
              |> int_of_float
              |> string_of_int
            )
            ++ "px",
          ~backgroundColor=
            fade(
              theme
              |> MaterialUi.Theme.Theme.paletteGet
              |> MaterialUi.Theme.Palette.commonGet
              |> MaterialUi.Theme.CommonColors.whiteGet,
              0.15,
            ),
          // '&:hover': {
          //   ~backgroundColor=fade(theme.palette.common.white, 0.25),
          // },
          ~marginLeft="0px",
          ~width="100%",
          // [theme.breakpoints.up('sm')]: {
          //   ~marginLeft=theme.spacing.unit,
          //   ~width='auto',
          // },
          (),
        ),
      searchIcon:
        ReactDOMRe.Style.make(
          ~width=
            (
              (
                theme
                |> MaterialUi.Theme.Theme.spacingGet
                |> MaterialUi.Theme.Spacing.unitGet
                |> int_of_float
              )
              * 9
              |> string_of_int
            )
            ++ "px",
          ~height="100%",
          ~position="absolute",
          ~pointerEvents="none",
          ~display="flex",
          ~alignItems="center",
          ~justifyContent="center",
          (),
        ),
      inputRoot: ReactDOMRe.Style.make(~color="inherit", ~width="100%", ()),
      inputInput:
        ReactDOMRe.Style.make(
          ~paddingTop=spacing->string_of_int ++ "px",
          ~paddingRight=spacing->string_of_int ++ "px",
          ~paddingBottom=spacing->string_of_int ++ "px",
          ~paddingLeft=(spacing * 10)->string_of_int ++ "px",
          // ~transition=theme.transitions.create("width"),
          ~width="100%",
          // [theme.breakpoints.up('sm')]: {
          //   ~width=120,
          //   '&:focus': {
          //     ~width=200,
          //   },
          (),
        ),
    };
  })
];

[@react.component]
let make = () => {
  MaterialUi.(
    <Styles>
      ...{classes =>
        <div
          className={classes.root}
          // <AppBar position=`Static>
          //   <Toolbar>
          //     <IconButton className={classes.menuButton} color="inherit" aria-label="Open drawer">
          //       <MenuIcon />
          //     </IconButton>
          //     <Typography className={classes.title} variant="h6" color="inherit" noWrap>
          //       Material-UI
          //     </Typography>
          //     <div className={classes.grow} />
          //     <div className={classes.search}>
          //       <div className={classes.searchIcon}>
          //         <SearchIcon />
          //       </div>
          //       <InputBase
          //         placeholder="Search…"
          //         classes={{
          //           root: classes.inputRoot,
          //           input: classes.inputInput,
          //         }}
          //       />
          //     </div>
          //   </Toolbar>
          // </AppBar>
        />
      }
    </Styles>
  );
};