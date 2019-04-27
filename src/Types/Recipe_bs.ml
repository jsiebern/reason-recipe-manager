(* Auto-generated from "Recipe.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type timeEstimate = Recipe_t.timeEstimate = {
  preparation: int option;
  cooking: int option;
  waiting: int option
}

type category = Recipe_t.category

type recipe = Recipe_t.recipe = {
  id: string;
  title: string;
  description: string;
  timeEstimate: timeEstimate;
  category: category;
  portions: float;
  portionIdentifier: string option
}

type amount = Recipe_t.amount

type ingredient = Recipe_t.ingredient = {
  id: string;
  amount: amount;
  name: string;
  nutritionId: string
}

type ingredientList = Recipe_t.ingredientList = {
  id: string;
  ingredients: ingredient list;
  title: string
}

let write__2 = (
  Atdgen_codec_runtime.Encode.option_as_constr (
    Atdgen_codec_runtime.Encode.int
  )
)
let read__2 = (
  Atdgen_codec_runtime.Decode.option_as_constr (
    Atdgen_codec_runtime.Decode.int
  )
)
let write_timeEstimate = (
  Atdgen_codec_runtime.Encode.make (fun (t : timeEstimate) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            write__2
            )
          ~name:"preparation"
          t.preparation
        ;
          Atdgen_codec_runtime.Encode.field
            (
            write__2
            )
          ~name:"cooking"
          t.cooking
        ;
          Atdgen_codec_runtime.Encode.field
            (
            write__2
            )
          ~name:"waiting"
          t.waiting
      ]
    )
  )
)
let read_timeEstimate = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          preparation =
            Atdgen_codec_runtime.Decode.decode
            (
              read__2
              |> Atdgen_codec_runtime.Decode.field "preparation"
            ) json;
          cooking =
            Atdgen_codec_runtime.Decode.decode
            (
              read__2
              |> Atdgen_codec_runtime.Decode.field "cooking"
            ) json;
          waiting =
            Atdgen_codec_runtime.Decode.decode
            (
              read__2
              |> Atdgen_codec_runtime.Decode.field "waiting"
            ) json;
      } : timeEstimate)
    )
  )
)
let write_category = (
  Atdgen_codec_runtime.Encode.make (fun (x : _) -> match x with
    | `Dinner ->
    Atdgen_codec_runtime.Encode.constr0 "Dinner"
    | `Dessert ->
    Atdgen_codec_runtime.Encode.constr0 "Dessert"
    | `Breakfast ->
    Atdgen_codec_runtime.Encode.constr0 "Breakfast"
    | `Salad ->
    Atdgen_codec_runtime.Encode.constr0 "Salad"
    | `SideDish ->
    Atdgen_codec_runtime.Encode.constr0 "SideDish"
    | `Drinks ->
    Atdgen_codec_runtime.Encode.constr0 "Drinks"
    | `Other ->
    Atdgen_codec_runtime.Encode.constr0 "Other"
  )
)
let read_category = (
  Atdgen_codec_runtime.Decode.enum
  [
      (
      "Dinner"
      ,
        `Single (`Dinner)
      )
    ;
      (
      "Dessert"
      ,
        `Single (`Dessert)
      )
    ;
      (
      "Breakfast"
      ,
        `Single (`Breakfast)
      )
    ;
      (
      "Salad"
      ,
        `Single (`Salad)
      )
    ;
      (
      "SideDish"
      ,
        `Single (`SideDish)
      )
    ;
      (
      "Drinks"
      ,
        `Single (`Drinks)
      )
    ;
      (
      "Other"
      ,
        `Single (`Other)
      )
  ]
)
let write__1 = (
  Atdgen_codec_runtime.Encode.option_as_constr (
    Atdgen_codec_runtime.Encode.string
  )
)
let read__1 = (
  Atdgen_codec_runtime.Decode.option_as_constr (
    Atdgen_codec_runtime.Decode.string
  )
)
let write_recipe = (
  Atdgen_codec_runtime.Encode.make (fun (t : recipe) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"id"
          t.id
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"title"
          t.title
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"description"
          t.description
        ;
          Atdgen_codec_runtime.Encode.field
            (
            write_timeEstimate
            )
          ~name:"timeEstimate"
          t.timeEstimate
        ;
          Atdgen_codec_runtime.Encode.field
            (
            write_category
            )
          ~name:"category"
          t.category
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.float
            )
          ~name:"portions"
          t.portions
        ;
          Atdgen_codec_runtime.Encode.field
            (
            write__1
            )
          ~name:"portionIdentifier"
          t.portionIdentifier
      ]
    )
  )
)
let read_recipe = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          id =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "id"
            ) json;
          title =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "title"
            ) json;
          description =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "description"
            ) json;
          timeEstimate =
            Atdgen_codec_runtime.Decode.decode
            (
              read_timeEstimate
              |> Atdgen_codec_runtime.Decode.field "timeEstimate"
            ) json;
          category =
            Atdgen_codec_runtime.Decode.decode
            (
              read_category
              |> Atdgen_codec_runtime.Decode.field "category"
            ) json;
          portions =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.float
              |> Atdgen_codec_runtime.Decode.field "portions"
            ) json;
          portionIdentifier =
            Atdgen_codec_runtime.Decode.decode
            (
              read__1
              |> Atdgen_codec_runtime.Decode.field "portionIdentifier"
            ) json;
      } : recipe)
    )
  )
)
let write_amount = (
  Atdgen_codec_runtime.Encode.make (fun (x : _) -> match x with
    | `Cup x ->
    Atdgen_codec_runtime.Encode.constr1 "Cup" (
      Atdgen_codec_runtime.Encode.float
    ) x
    | `TableSpoon x ->
    Atdgen_codec_runtime.Encode.constr1 "TableSpoon" (
      Atdgen_codec_runtime.Encode.float
    ) x
    | `TeaSpoon x ->
    Atdgen_codec_runtime.Encode.constr1 "TeaSpoon" (
      Atdgen_codec_runtime.Encode.float
    ) x
    | `G x ->
    Atdgen_codec_runtime.Encode.constr1 "G" (
      Atdgen_codec_runtime.Encode.int
    ) x
    | `Kg x ->
    Atdgen_codec_runtime.Encode.constr1 "Kg" (
      Atdgen_codec_runtime.Encode.float
    ) x
    | `Ml x ->
    Atdgen_codec_runtime.Encode.constr1 "Ml" (
      Atdgen_codec_runtime.Encode.int
    ) x
    | `L x ->
    Atdgen_codec_runtime.Encode.constr1 "L" (
      Atdgen_codec_runtime.Encode.float
    ) x
  )
)
let read_amount = (
  Atdgen_codec_runtime.Decode.enum
  [
      (
      "Cup"
      ,
        `Decode (
        Atdgen_codec_runtime.Decode.float
        |> Atdgen_codec_runtime.Decode.map (fun x -> ((`Cup x) : _))
        )
      )
    ;
      (
      "TableSpoon"
      ,
        `Decode (
        Atdgen_codec_runtime.Decode.float
        |> Atdgen_codec_runtime.Decode.map (fun x -> ((`TableSpoon x) : _))
        )
      )
    ;
      (
      "TeaSpoon"
      ,
        `Decode (
        Atdgen_codec_runtime.Decode.float
        |> Atdgen_codec_runtime.Decode.map (fun x -> ((`TeaSpoon x) : _))
        )
      )
    ;
      (
      "G"
      ,
        `Decode (
        Atdgen_codec_runtime.Decode.int
        |> Atdgen_codec_runtime.Decode.map (fun x -> ((`G x) : _))
        )
      )
    ;
      (
      "Kg"
      ,
        `Decode (
        Atdgen_codec_runtime.Decode.float
        |> Atdgen_codec_runtime.Decode.map (fun x -> ((`Kg x) : _))
        )
      )
    ;
      (
      "Ml"
      ,
        `Decode (
        Atdgen_codec_runtime.Decode.int
        |> Atdgen_codec_runtime.Decode.map (fun x -> ((`Ml x) : _))
        )
      )
    ;
      (
      "L"
      ,
        `Decode (
        Atdgen_codec_runtime.Decode.float
        |> Atdgen_codec_runtime.Decode.map (fun x -> ((`L x) : _))
        )
      )
  ]
)
let write_ingredient = (
  Atdgen_codec_runtime.Encode.make (fun (t : ingredient) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"id"
          t.id
        ;
          Atdgen_codec_runtime.Encode.field
            (
            write_amount
            )
          ~name:"amount"
          t.amount
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"name"
          t.name
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"nutritionId"
          t.nutritionId
      ]
    )
  )
)
let read_ingredient = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          id =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "id"
            ) json;
          amount =
            Atdgen_codec_runtime.Decode.decode
            (
              read_amount
              |> Atdgen_codec_runtime.Decode.field "amount"
            ) json;
          name =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "name"
            ) json;
          nutritionId =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "nutritionId"
            ) json;
      } : ingredient)
    )
  )
)
let write__3 = (
  Atdgen_codec_runtime.Encode.list (
    write_ingredient
  )
)
let read__3 = (
  Atdgen_codec_runtime.Decode.list (
    read_ingredient
  )
)
let write_ingredientList = (
  Atdgen_codec_runtime.Encode.make (fun (t : ingredientList) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"id"
          t.id
        ;
          Atdgen_codec_runtime.Encode.field
            (
            write__3
            )
          ~name:"ingredients"
          t.ingredients
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"title"
          t.title
      ]
    )
  )
)
let read_ingredientList = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          id =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "id"
            ) json;
          ingredients =
            Atdgen_codec_runtime.Decode.decode
            (
              read__3
              |> Atdgen_codec_runtime.Decode.field "ingredients"
            ) json;
          title =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "title"
            ) json;
      } : ingredientList)
    )
  )
)
