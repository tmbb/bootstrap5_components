defmodule Bootstrap5componentsTest do
  use ExUnit.Case
  doctest Bootstrap5Components
  alias CodeGen.DocumentationOnlyError
  require Phoenix.LiveViewTest
  alias Phoenix.LiveView.JS

  test "The functions in the Boostrap5Components module raise an error" do
    # Components without default arguments

    components_without_default_arguments = [
      &Bootstrap5Components.modal/1,
      &Bootstrap5Components.flash/1,
      &Bootstrap5Components.flash_group/1,
      &Bootstrap5Components.simple_form/1,
      &Bootstrap5Components.button/1,
      &Bootstrap5Components.list/1,
      &Bootstrap5Components.label/1,
      &Bootstrap5Components.back/1,
      &Bootstrap5Components.error/1,
      &Bootstrap5Components.header/1,
      &Bootstrap5Components.table/1
    ]

    for function <- components_without_default_arguments do
      assert_raise DocumentationOnlyError, fn ->
        Phoenix.LiveViewTest.render_component(function, [])
      end
    end

    # JS functions (which take a %JS{} as an optional argument and a string)


    js_functions_1 = [
      &Bootstrap5Components.show/1,
      &Bootstrap5Components.hide/1,
      &Bootstrap5Components.show_modal/1,
      &Bootstrap5Components.hide_modal/1
    ]

    for function <- js_functions_1 do
      assert_raise DocumentationOnlyError, fn ->
        function.("component-id-or-selector")
      end
    end

    js_functions_2 = [
      &Bootstrap5Components.show/2,
      &Bootstrap5Components.hide/2,
      &Bootstrap5Components.show_modal/2,
      &Bootstrap5Components.hide_modal/2
    ]

    for function <- js_functions_2 do
      assert_raise DocumentationOnlyError, fn ->
        function.(%JS{}, "component-id-or-selector")
      end
    end

    # Components with default arguments

    assert_raise DocumentationOnlyError, fn ->
      Phoenix.LiveViewTest.render_component(
        &Bootstrap5Components.css_assets/1,
        [theme: "slate"]
      )
    end

    assert_raise DocumentationOnlyError, fn ->
      Phoenix.LiveViewTest.render_component(
        &Bootstrap5Components.icon/1,
        [name: "upload"]
      )
    end

    assert_raise DocumentationOnlyError, fn ->
      Phoenix.LiveViewTest.render_component(
        &Bootstrap5Components.input/1,
        [type: "checkbox", value: true]
      )
    end
  end
end
