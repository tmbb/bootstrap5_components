defmodule Bootstrap5Components.MovableInputs do
  @moduledoc """
  Functions to convert the nested inputs into Ecto changesets.
  """

  alias Ecto.Changeset

  @doc """
  Cast a group of movable inputs into an `%Ecto.Changeset{}`.
  This part is necessarily coupled to Ecto, and creates a dependency on Ecto.
  This is expected, as the frontend must be coupled to the backend somehow.

  This function expects the following options:

    * `:move_param` - the name of the parameter that represents
      the index of the moved input and the direction of the movement.
      The value of this parameter must be a map of the form
      `%{"up" => index}` or `%{"down" => index}`.

    * `:sort_param` - the name of the sort parameter which controls
      the order of the elements. If we're using this function we
      aren't actually changing the order, we're only working
      with a single item that has moved up or down.

    * `:moved_param` - the name of the field in the ecto schema
      that contains the new position for the item that has moved.
  """
  def cast_movable_assoc(%Changeset{} = changeset, assoc, opts)
      when is_atom(assoc) and is_list(opts) do
    move_param = Keyword.fetch!(opts, :move_param)
    sort_param = Keyword.fetch!(opts, :sort_param)
    moved_field = Keyword.fetch!(opts, :moved_field)
    new_changeset = handle_item_movement(changeset, moved_field, move_param, sort_param)

    Changeset.cast_assoc(new_changeset, assoc, opts)
  end

  defp handle_item_movement(%Changeset{} = changeset, moved_field, move_param, sort_param)
      when is_atom(moved_field) and is_atom(move_param) and is_atom(sort_param) do
    # Helper function to be used by the above casting operation
    params = changeset.params

    # We'll assume that parameters will be strings, because we only intend to use this
    # on parameters sent through the network into our phoenix applications.
    # Those parameters are always represented as maps with string keys.
    move_param_string = to_string(move_param)
    sort_param_string = to_string(sort_param)

    case Map.fetch(params, move_param_string) do
      :error ->
        changeset

      {:ok, %{"up" => index_as_string}} ->
        case Map.fetch(params, sort_param_string) do
          :error ->
            changeset

          {:ok, sort} ->
            {index, ""} = Integer.parse(index_as_string)
            index_above = index - 1
            index_above_as_string = to_string(index_above)

            new_sort =
              for i <- sort do
                case i do
                  ^index_above_as_string -> index_as_string
                  ^index_as_string -> index_above_as_string
                  other -> other
                end
              end

            new_params = Map.put(params, sort_param_string, new_sort)
            new_changeset = %{changeset | params: new_params}
            Changeset.put_change(new_changeset, moved_field, index_above)
        end

      {:ok, %{"down" => index_as_string}} ->
        case Map.fetch(params, sort_param_string) do
          :error ->
            changeset

          {:ok, sort} ->
            {index, ""} = Integer.parse(index_as_string)
            index_below = index + 1
            index_below_as_tring = to_string(index_below)

            new_sort =
              for i <- sort do
                case i do
                  ^index_below_as_tring -> index_as_string
                  ^index_as_string -> index_below_as_tring
                  other -> other
                end
              end

            new_params = Map.put(params, sort_param_string, new_sort)
            new_changeset = %{changeset | params: new_params}
            Changeset.put_change(new_changeset, moved_field, index_below)
        end
    end
  end
end
