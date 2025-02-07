defmodule MyComponents do
  # Add the functions to this module so that the ExDocs page of this module
  # contains the right functions with the right arguments.
  # The functions themselves are not meant to be called,
  # and will raise an error.
  use CodeGen,
    module: Bootstrap5Components,
    options: [
      # This gettext module isn't meant to translate anything
      gettext_module: Bootstrap5Components.DummyGettext
    ]
end
