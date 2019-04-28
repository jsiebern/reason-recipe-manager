open Repromise;
open Belt.Result;

let headers =
  Fetch.HeadersInit.makeWithArray([|
    ("x-app-id", "83d876f1"),
    ("x-app-key", "559669396947c4f06e5774f7888867d7"),
    ("x-remote-user-id", "user"),
    ("Content-Type", "application/json"),
  |]);

let fetchToResult = (pr, convertValue, callback) => {
  pr
  |> Rejectable.fromJsPromise
  |> Rejectable.map(value => value->Fetch.Response.json)
  |> Rejectable.andThen(Rejectable.fromJsPromise)
  |> Rejectable.map(convertValue)
  |> Rejectable.catch(error => Repromise.resolved(Error(error->Obj.magic)))
  |> andThen(res => Repromise.resolved(callback(res)));
};

let fetchAutoComplete = (query: string, callback) => {
  let url =
    "https://trackapi.nutritionix.com/v2/search/instant?query="
    ++ query
    ++ "&self=false&branded=false&common=true&common_general=true&common_grocery=true&common_restaurant=true";
  Fetch.fetchWithInit(
    url,
    Fetch.RequestInit.make(~method_=Fetch.Get, ~headers, ()),
  )
  ->fetchToResult(
      value =>
        try (Ok(value->Nutritionix_bs.read_autoCompleteMain.common)) {
        | e => Error(e)
        },
      callback,
    );
};

let fetchNutrients = (query: Nutritionix_t.nutrientsRequest, callback) => {
  let url = "https://trackapi.nutritionix.com/v2/natural/nutrients";
  Fetch.fetchWithInit(
    url,
    Fetch.RequestInit.make(
      ~method_=Fetch.Post,
      ~headers,
      ~body=
        Fetch.BodyInit.make(
          query->Nutritionix_bs.write_nutrientsRequest->Js.Json.stringify,
        ),
      (),
    ),
  )
  ->fetchToResult(
      value =>
        try (Ok(value->Nutritionix_bs.read_nutriendsResponse.foods)) {
        | e => Error(e)
        },
      callback,
    );
};