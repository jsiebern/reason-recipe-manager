(* Auto-generated from "Nutritionix.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type nutrientsRequest = Nutritionix_t.nutrientsRequest = {
  lineDelimited: bool option;
  query: string;
  useBrandedFoods: bool option;
  useRawFoods: bool option;
  locale: string option
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

val read_nutrientsRequest :  nutrientsRequest Atdgen_codec_runtime.Decode.t

val write_nutrientsRequest :  nutrientsRequest Atdgen_codec_runtime.Encode.t

val read_nutrientFoodMetadata :  nutrientFoodMetadata Atdgen_codec_runtime.Decode.t

val write_nutrientFoodMetadata :  nutrientFoodMetadata Atdgen_codec_runtime.Encode.t

val read_foodPhoto :  foodPhoto Atdgen_codec_runtime.Decode.t

val write_foodPhoto :  foodPhoto Atdgen_codec_runtime.Encode.t

val read_nutrientFood :  nutrientFood Atdgen_codec_runtime.Decode.t

val write_nutrientFood :  nutrientFood Atdgen_codec_runtime.Encode.t

val read_nutriendsResponse :  nutriendsResponse Atdgen_codec_runtime.Decode.t

val write_nutriendsResponse :  nutriendsResponse Atdgen_codec_runtime.Encode.t

val read_autoCompleteFood :  autoCompleteFood Atdgen_codec_runtime.Decode.t

val write_autoCompleteFood :  autoCompleteFood Atdgen_codec_runtime.Encode.t

val read_autoCompleteMain :  autoCompleteMain Atdgen_codec_runtime.Decode.t

val write_autoCompleteMain :  autoCompleteMain Atdgen_codec_runtime.Encode.t

