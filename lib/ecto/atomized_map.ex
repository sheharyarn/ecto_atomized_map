defmodule Ecto.AtomizedMap do
  @behaviour Ecto.Type

  def type, do: :map

  def cast(map) when is_map(map), do: {:ok, atomize(map)}
  def cast(_term), do: :error

  def load(map) when is_map(map), do: {:ok, atomize(map)}
  def load(_term), do: :error

  def dump(map) when is_map(map), do: {:ok, map}
  def dump(_term), do: :error

  def equal?(term1, term2) when is_map(term1) and is_map(term2),
    do: atomize(term1) == atomize(term2)

  def equal?(nil, nil), do: true

  def equal?(_term1, _term2), do: false

  defp atomize(map) do
    ExUtils.Map.symbolize_keys(map)
  end
end
