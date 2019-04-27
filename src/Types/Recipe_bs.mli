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

val read_timeEstimate :  timeEstimate Atdgen_codec_runtime.Decode.t

val write_timeEstimate :  timeEstimate Atdgen_codec_runtime.Encode.t

val read_category :  category Atdgen_codec_runtime.Decode.t

val write_category :  category Atdgen_codec_runtime.Encode.t

val read_recipe :  recipe Atdgen_codec_runtime.Decode.t

val write_recipe :  recipe Atdgen_codec_runtime.Encode.t

val read_amount :  amount Atdgen_codec_runtime.Decode.t

val write_amount :  amount Atdgen_codec_runtime.Encode.t

val read_ingredient :  ingredient Atdgen_codec_runtime.Decode.t

val write_ingredient :  ingredient Atdgen_codec_runtime.Encode.t

val read_ingredientList :  ingredientList Atdgen_codec_runtime.Decode.t

val write_ingredientList :  ingredientList Atdgen_codec_runtime.Encode.t

