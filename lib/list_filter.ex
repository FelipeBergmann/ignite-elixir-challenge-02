defmodule ListFilter do
  require Integer

  def call(list), do: filter_list(list)

  defp filter_list(list) do
    filtered_list = Enum.filter(list, fn n -> is_numeric?(n) and is_odd?(n) end)
    length(filtered_list)
  end

  defp parse_int(value) do
    {parsed_value, _} = Integer.parse(value)
    parsed_value
  end

  defp is_numeric?(value), do: is_number(value) or Integer.parse(value, 10) != :error
  defp is_odd?(value) when is_binary(value), do: Integer.is_odd(parse_int(value))
  defp is_odd?(value) when is_integer(value), do: Integer.is_odd(value)
end
