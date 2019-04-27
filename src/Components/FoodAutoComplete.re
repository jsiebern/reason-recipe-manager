module Styles = {
  open Emotion;

  let list =
    css([
      listStyle(`none, `inside, `none),
      select("& > li", [display(`flex), alignItems(`center)]),
      select(
        "& > li > span",
        [
          width(30->px),
          display(`flex),
          justifyContent(`center),
          marginRight(15->px),
        ],
      ),
      select("& > li > span > img", [maxWidth(30->px), maxHeight(30->px)]),
    ]);
};

type typing =
  | Idle
  | Typing
  | Fetching;

type state = {
  typing,
  value: string,
  autoComplete: option(array(Nutritionix_t.autoCompleteFood)),
};

type action =
  | SetTyping(typing)
  | SetValue(string)
  | SetAutoComplete(option(array(Nutritionix_t.autoCompleteFood)));

let reducer = (state: state, action: action) =>
  switch (action) {
  | SetTyping(typing) => {...state, typing}
  | SetValue(value) => {...state, value}
  | SetAutoComplete(autoComplete) => {...state, autoComplete}
  };

[@react.component]
let make = () => {
  let (state, dispatch) =
    React.useReducer(reducer, {typing: Idle, value: "", autoComplete: None});

  let intervalId: React.Ref.t(option(Js.Global.timeoutId)) =
    React.useRef(None);

  React.useEffect1(
    () => {
      switch (state.typing) {
      | Fetching when state.value->Js.String.length >= 3 =>
        Nutritionix.fetchAutoComplete(state.value, res =>
          switch (res) {
          | Ok(res) => dispatch(SetAutoComplete(Some(res)))
          | Error(err) => Js.log(err)
          }
        )
        ->ignore;
        dispatch(SetTyping(Idle));
      | Idle
      | Typing => ()
      | Fetching => dispatch(SetTyping(Idle))
      };
      None;
    },
    [|state.typing|],
  );

  <div>
    <input
      type_="text"
      value={state.value}
      onChange={e => {
        switch (intervalId->React.Ref.current) {
        | None => ()
        | Some(id) => Js.Global.clearTimeout(id)
        };
        intervalId->React.Ref.setCurrent(
          Some(
            Js.Global.setTimeout(() => dispatch(SetTyping(Fetching)), 1000),
          ),
        );
        switch (state.typing) {
        | Typing
        | Fetching => ()
        | Idle => dispatch(SetTyping(Typing))
        };
        dispatch(SetValue(e->ReactEvent.Form.target##value));
      }}
    />
    {switch (state.autoComplete) {
     | None => React.null
     | Some(auto) =>
       <ul className=Styles.list>
         {auto
          ->Belt.Array.map(food =>
              <li key={food.foodName}>
                <span>
                  <img src={food.photo.thumb} alt={food.foodName} />
                </span>
                {food.foodName->Helpers.capitalize->React.string}
              </li>
            )
          ->React.array}
       </ul>
     }}
  </div>;
};