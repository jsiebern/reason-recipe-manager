(* Auto-generated from "Nutritionix.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type nutrientsRequest = Nutritionix_t.nutrientsRequest = {
  lineDelimited: bool option;
  query: string;
  useBrandedFoods: bool option;
  useRawFoods: bool option
}

type nutrientFoodMetadata = Nutritionix_t.nutrientFoodMetadata = {
  isRawFood: bool option
}

type foodPhoto = Nutritionix_t.foodPhoto = { thumb: string }

type nutrientFood = Nutritionix_t.nutrientFood = {
  foodName: string;
  metadata: nutrientFoodMetadata option;
  ndb_no: int;
  nf_calories: float;
  nf_cholesterol: float;
  nf_dietary_fiber: float;
  nf_p: float;
  nf_potassium: float;
  nf_protein: float;
  nf_saturated_fat: float;
  nf_sodium: float;
  nf_sugars: float;
  nf_total_carbohydrate: float;
  nf_total_fat: float;
  photo: foodPhoto option;
  servingQty: int;
  servingUnit: string;
  servingWeightGrams: float
}

type nutriendsResponse = Nutritionix_t.nutriendsResponse = {
  foods: nutrientFood list
}

type autoCompleteFood = Nutritionix_t.autoCompleteFood = {
  foodName: string;
  locale: string;
  servingQty: float;
  servingUnit: string;
  tagId: string;
  tagName: string;
  photo: foodPhoto
}

type autoCompleteMain = Nutritionix_t.autoCompleteMain = {
  common: autoCompleteFood Atdgen_runtime.Util.ocaml_array
}

let write__2 = (
  Atdgen_codec_runtime.Encode.option_as_constr (
    Atdgen_codec_runtime.Encode.bool
  )
)
let read__2 = (
  Atdgen_codec_runtime.Decode.option_as_constr (
    Atdgen_codec_runtime.Decode.bool
  )
)
let write_nutrientsRequest = (
  Atdgen_codec_runtime.Encode.make (fun (t : nutrientsRequest) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field_o
            (
            Atdgen_codec_runtime.Encode.bool
            )
          ~name:"line_delimited"
          t.lineDelimited
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"query"
          t.query
        ;
          Atdgen_codec_runtime.Encode.field_o
            (
            Atdgen_codec_runtime.Encode.bool
            )
          ~name:"use_branded_foods"
          t.useBrandedFoods
        ;
          Atdgen_codec_runtime.Encode.field_o
            (
            Atdgen_codec_runtime.Encode.bool
            )
          ~name:"use_raw_foods"
          t.useRawFoods
      ]
    )
  )
)
let read_nutrientsRequest = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          lineDelimited =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.bool
              |> Atdgen_codec_runtime.Decode.fieldOptional "line_delimited"
            ) json;
          query =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "query"
            ) json;
          useBrandedFoods =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.bool
              |> Atdgen_codec_runtime.Decode.fieldOptional "use_branded_foods"
            ) json;
          useRawFoods =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.bool
              |> Atdgen_codec_runtime.Decode.fieldOptional "use_raw_foods"
            ) json;
      } : nutrientsRequest)
    )
  )
)
let write_nutrientFoodMetadata = (
  Atdgen_codec_runtime.Encode.make (fun (t : nutrientFoodMetadata) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            write__2
            )
          ~name:"is_raw_food"
          t.isRawFood
      ]
    )
  )
)
let read_nutrientFoodMetadata = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          isRawFood =
            Atdgen_codec_runtime.Decode.decode
            (
              read__2
              |> Atdgen_codec_runtime.Decode.field "is_raw_food"
            ) json;
      } : nutrientFoodMetadata)
    )
  )
)
let write_foodPhoto = (
  Atdgen_codec_runtime.Encode.make (fun (t : foodPhoto) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"thumb"
          t.thumb
      ]
    )
  )
)
let read_foodPhoto = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          thumb =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "thumb"
            ) json;
      } : foodPhoto)
    )
  )
)
let write__5 = (
  Atdgen_codec_runtime.Encode.option_as_constr (
    write_foodPhoto
  )
)
let read__5 = (
  Atdgen_codec_runtime.Decode.option_as_constr (
    read_foodPhoto
  )
)
let write__4 = (
  Atdgen_codec_runtime.Encode.option_as_constr (
    write_nutrientFoodMetadata
  )
)
let read__4 = (
  Atdgen_codec_runtime.Decode.option_as_constr (
    read_nutrientFoodMetadata
  )
)
let write_nutrientFood = (
  Atdgen_codec_runtime.Encode.make (fun (t : nutrientFood) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"food_name"
          t.foodName
        ;
          Atdgen_codec_runtime.Encode.field_o
            (
            write_nutrientFoodMetadata
            )
          ~name:"metadata"
          t.metadata
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.int
            )
          ~name:"ndb_no"
          t.ndb_no
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.float
            )
          ~name:"nf_calories"
          t.nf_calories
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.float
            )
          ~name:"nf_cholesterol"
          t.nf_cholesterol
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.float
            )
          ~name:"nf_dietary_fiber"
          t.nf_dietary_fiber
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.float
            )
          ~name:"nf_p"
          t.nf_p
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.float
            )
          ~name:"nf_potassium"
          t.nf_potassium
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.float
            )
          ~name:"nf_protein"
          t.nf_protein
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.float
            )
          ~name:"nf_saturated_fat"
          t.nf_saturated_fat
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.float
            )
          ~name:"nf_sodium"
          t.nf_sodium
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.float
            )
          ~name:"nf_sugars"
          t.nf_sugars
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.float
            )
          ~name:"nf_total_carbohydrate"
          t.nf_total_carbohydrate
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.float
            )
          ~name:"nf_total_fat"
          t.nf_total_fat
        ;
          Atdgen_codec_runtime.Encode.field_o
            (
            write_foodPhoto
            )
          ~name:"photo"
          t.photo
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.int
            )
          ~name:"serving_qty"
          t.servingQty
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"serving_unit"
          t.servingUnit
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.float
            )
          ~name:"serving_weight_grams"
          t.servingWeightGrams
      ]
    )
  )
)
let read_nutrientFood = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          foodName =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "food_name"
            ) json;
          metadata =
            Atdgen_codec_runtime.Decode.decode
            (
              read_nutrientFoodMetadata
              |> Atdgen_codec_runtime.Decode.fieldOptional "metadata"
            ) json;
          ndb_no =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.int
              |> Atdgen_codec_runtime.Decode.field "ndb_no"
            ) json;
          nf_calories =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.float
              |> Atdgen_codec_runtime.Decode.field "nf_calories"
            ) json;
          nf_cholesterol =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.float
              |> Atdgen_codec_runtime.Decode.field "nf_cholesterol"
            ) json;
          nf_dietary_fiber =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.float
              |> Atdgen_codec_runtime.Decode.field "nf_dietary_fiber"
            ) json;
          nf_p =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.float
              |> Atdgen_codec_runtime.Decode.field "nf_p"
            ) json;
          nf_potassium =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.float
              |> Atdgen_codec_runtime.Decode.field "nf_potassium"
            ) json;
          nf_protein =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.float
              |> Atdgen_codec_runtime.Decode.field "nf_protein"
            ) json;
          nf_saturated_fat =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.float
              |> Atdgen_codec_runtime.Decode.field "nf_saturated_fat"
            ) json;
          nf_sodium =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.float
              |> Atdgen_codec_runtime.Decode.field "nf_sodium"
            ) json;
          nf_sugars =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.float
              |> Atdgen_codec_runtime.Decode.field "nf_sugars"
            ) json;
          nf_total_carbohydrate =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.float
              |> Atdgen_codec_runtime.Decode.field "nf_total_carbohydrate"
            ) json;
          nf_total_fat =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.float
              |> Atdgen_codec_runtime.Decode.field "nf_total_fat"
            ) json;
          photo =
            Atdgen_codec_runtime.Decode.decode
            (
              read_foodPhoto
              |> Atdgen_codec_runtime.Decode.fieldOptional "photo"
            ) json;
          servingQty =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.int
              |> Atdgen_codec_runtime.Decode.field "serving_qty"
            ) json;
          servingUnit =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "serving_unit"
            ) json;
          servingWeightGrams =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.float
              |> Atdgen_codec_runtime.Decode.field "serving_weight_grams"
            ) json;
      } : nutrientFood)
    )
  )
)
let write__3 = (
  Atdgen_codec_runtime.Encode.list (
    write_nutrientFood
  )
)
let read__3 = (
  Atdgen_codec_runtime.Decode.list (
    read_nutrientFood
  )
)
let write_nutriendsResponse = (
  Atdgen_codec_runtime.Encode.make (fun (t : nutriendsResponse) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            write__3
            )
          ~name:"foods"
          t.foods
      ]
    )
  )
)
let read_nutriendsResponse = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          foods =
            Atdgen_codec_runtime.Decode.decode
            (
              read__3
              |> Atdgen_codec_runtime.Decode.field "foods"
            ) json;
      } : nutriendsResponse)
    )
  )
)
let write_autoCompleteFood = (
  Atdgen_codec_runtime.Encode.make (fun (t : autoCompleteFood) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"food_name"
          t.foodName
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"locale"
          t.locale
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.float
            )
          ~name:"serving_qty"
          t.servingQty
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"serving_unit"
          t.servingUnit
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"tag_id"
          t.tagId
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"tag_name"
          t.tagName
        ;
          Atdgen_codec_runtime.Encode.field
            (
            write_foodPhoto
            )
          ~name:"photo"
          t.photo
      ]
    )
  )
)
let read_autoCompleteFood = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          foodName =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "food_name"
            ) json;
          locale =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "locale"
            ) json;
          servingQty =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.float
              |> Atdgen_codec_runtime.Decode.field "serving_qty"
            ) json;
          servingUnit =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "serving_unit"
            ) json;
          tagId =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "tag_id"
            ) json;
          tagName =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "tag_name"
            ) json;
          photo =
            Atdgen_codec_runtime.Decode.decode
            (
              read_foodPhoto
              |> Atdgen_codec_runtime.Decode.field "photo"
            ) json;
      } : autoCompleteFood)
    )
  )
)
let write__1 = (
  Atdgen_codec_runtime.Encode.array (
    write_autoCompleteFood
  )
)
let read__1 = (
  Atdgen_codec_runtime.Decode.array (
    read_autoCompleteFood
  )
)
let write_autoCompleteMain = (
  Atdgen_codec_runtime.Encode.make (fun (t : autoCompleteMain) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            write__1
            )
          ~name:"common"
          t.common
      ]
    )
  )
)
let read_autoCompleteMain = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          common =
            Atdgen_codec_runtime.Decode.decode
            (
              read__1
              |> Atdgen_codec_runtime.Decode.field "common"
            ) json;
      } : autoCompleteMain)
    )
  )
)
