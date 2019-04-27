open Layout;

module App = {
  [@react.component]
  let make = () => {
    <Root>
      <div> <FoodAutoComplete /> </div>
      <div> <NutrientList /> </div>
    </Root>;
  };
};

ReactDOMRe.renderToElementWithId(<App />, "app");