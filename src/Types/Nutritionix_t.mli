(* Auto-generated from "Nutritionix.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type nutrientsRequest = {
  lineDelimited: bool option;
  query: string;
  useBrandedFoods: bool option;
  useRawFoods: bool option
}

type nutrientFoodMetadata = { isRawFood: bool option }

type foodPhoto = { thumb: string }

type nutrientFood = {
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

type nutriendsResponse = { foods: nutrientFood list }

type autoCompleteFood = {
  foodName: string;
  locale: string;
  servingQty: float;
  servingUnit: string;
  tagId: string;
  tagName: string;
  photo: foodPhoto
}

type autoCompleteMain = {
  common: autoCompleteFood Atdgen_runtime.Util.ocaml_array
}
