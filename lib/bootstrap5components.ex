defmodule Bootstrap5Components do
  @moduledoc """
  A module to generate Phoenix Bootstrap components tailored to your application.

  This module can be used together with the CodeGen package as follows:

      defmodule YourAppWeb.CoreComponents do
        use CodeGen,
          module: Bootstrap5Components,
          options: [
            # This options is required:
            gettext_module: YourAppWeb.Gettext
          ]
      end

  Supports the following options:

    * `gettext_module` - a module that implements the `Gettext` behaviour
      to internationalize the user-visible text in your components
  """

  alias Phoenix.LiveView.JS
  use Phoenix.Component

  require Bootstrap5Components.CodeGen

  @doc false
  defmacro __code_gen__(options) do
    # This is some pretty weird indirection, but it has a reason.
    # We want to be able to use CodeGen on the current module,
    # so that we generate the right functions with the right
    # documentation.
    #
    # We can't use the `__code_gen__/1` macro at top level
    # in the same module that defines it.
    # Because of this, we must define the relevant `__code_gen__/1` macro
    # in another module.
    #
    # This macro will expand into another macro which will actually
    # generate the correct code.
    # Throughout this chain of macro expansions, the Elixir compiler
    # will be able to easily follow the dependencies of all modules,
    # so everything will run smoothly.
    quote do
      require Bootstrap5Components.CodeGen
      Bootstrap5Components.CodeGen.__code_gen__(unquote(options))
    end
  end

  # Add the functions to this module so that the ExDocs page of this module
  # contains the right functions with the right arguments.
  # The functions themselves are not meant to be called,
  # and will raise an error.
  use CodeGen,
    module: Bootstrap5Components.CodeGen,
    options: [
      # This gettext module isn't meant to translate anything
      gettext_module: Bootstrap5Components.DummyGettext,
      # Cause the functions to raise when called.
      # NOTE: `:documentation_only?` is not a generic option
      # we can pass to CodeGen. It's something that the
      # `Bootstrap5Components.CodeGen` supports because we've
      # made it support it.
      documentation_only?: true
    ]
end
