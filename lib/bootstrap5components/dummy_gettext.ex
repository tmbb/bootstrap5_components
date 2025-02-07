defmodule Bootstrap5Components.DummyGettext do
  @moduledoc false

  # This module isn't meant to actually translate anything.
  # It's just a functional Gettext module that exposts
  # the right functions and macros so that we can `use CodeGen`
  # to build a Bootstrap5Components module for documentation
  # purposes
  use Gettext.Backend, otp_app: :bootstrap5components
end
