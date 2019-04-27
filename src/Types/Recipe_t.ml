(* Auto-generated from "Recipe.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type timeEstimate = {
  preparation: int option;
  cooking: int option;
  waiting: int option
}

type category = [
    `Dinner | `Dessert | `Breakfast | `Salad | `SideDish | `Drinks | `Other
]

type recipe = {
  id: string;
  title: string;
  description: string;
  timeEstimate: timeEstimate;
  category: category;
  portions: float;
  portionIdentifier: string option
}

type amount = [
    `Cup of float
  | `TableSpoon of float
  | `TeaSpoon of float
  | `G of int
  | `Kg of float
  | `Ml of int
  | `L of float
]

type ingredient = {
  id: string;
  amount: amount;
  name: string;
  nutritionId: string
}

type ingredientList = {
  id: string;
  ingredients: ingredient list;
  title: string
}
