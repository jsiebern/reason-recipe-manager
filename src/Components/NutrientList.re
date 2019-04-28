[@react.component]
let make = () => {
  let (value, setValue) = React.useState(() => "");
  let (nutrients, setNutrients) = React.useState(() => []);

  <div>
    <input
      type_="text"
      value
      onKeyUp={e =>
        switch (e->ReactEvent.Keyboard.keyCode) {
        | 13 =>
          NutritionixApi.fetchNutrients(
            {
              lineDelimited: None,
              query: value,
              useBrandedFoods: Some(false),
              useRawFoods: Some(false),
              locale: Some("de_DE"),
            },
            res =>
            switch (res) {
            | Ok([nutrient, ..._]) =>
              setNutrients(nutrients => [nutrient, ...nutrients])
            | Ok(_) => ()
            | Error(e) => Js.log(e)
            }
          )
          ->ignore
        | _ => ()
        }
      }
      onChange={e => {
        let v = e->ReactEvent.Form.target##value;
        setValue(v);
      }}
    />
    <br />
    <table>
      <tbody>
        {nutrients
         ->Belt.List.toArray
         ->Belt.Array.map(food =>
             <tr key={food.ndb_no->string_of_int}>
               <td> {food.ndb_no->string_of_int->React.string} </td>
               <td>
                 <img
                   src=Belt.Option.(
                     food.photo->map(p => p.thumb)->getWithDefault("")
                   )
                   alt={food.foodName}
                 />
               </td>
               <td> food.foodName->React.string </td>
               <td>
                 {(food.servingWeightGrams->Js.Float.toString ++ "g")
                  ->React.string}
               </td>
             </tr>
           )
         ->React.array}
      </tbody>
    </table>
  </div>;
};