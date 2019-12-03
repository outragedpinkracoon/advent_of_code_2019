defmodule Day2 do
  @moduledoc """
  Documentation for Day2.
  """

  # header to define default args
  def run(input_string, start_index \\ 0, _ \\ true)

  @doc """
  Either reaches the end of the list and exits the program or continues using
  The next 4 items in the list

   ## Examples
      iex> Day2.run([1, 0, 0, 0, 99])
      [2, 0, 0, 0, 99]
  """
  def run(result, _, false), do: result
  def run(input_string, start_index, _) do
    case Enum.slice(input_string, start_index, 4) do
      [] -> run(input_string, nil, false)
      first_4_items -> compute_and_update(first_4_items, input_string, start_index)
    end
  end

  # Takes in a list and exits the program if it sees a 99 in the next 4 digits
  # Otherwise, runs the computation and updates the value at the index given
  defp compute_and_update([99|_], result, _), do: result
  defp compute_and_update([operation | [index1, index2, position | _]], input_string, start_index) do
    operation
    |> compute_value(Enum.at(input_string, index1), Enum.at(input_string, index2))
    |> update_list(input_string, position)
    |> run(start_index + 4, true)
  end

  # Pull out into a function to allow piping (args in wrong order)
  defp update_list(new_value, input_string, position), do: List.replace_at(input_string, position, new_value)

  # either adds or multiplies depending on the instruction given
  defp compute_value(1, input1, input2), do: input1 + input2
  defp compute_value(2, input1, input2), do: input1 * input2
end
