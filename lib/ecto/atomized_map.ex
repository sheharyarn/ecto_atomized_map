defmodule Ecto.AtomizedMap do
  @behaviour Ecto.Type

  def type, do: :map

  def cast(map) when is_map(map), do: {:ok, atomize(map)}
  def cast(_term), do: :error

  def load(map) when is_map(map), do: {:ok, atomize(map)}
  def load(_term), do: :error

  def dump(map) when is_map(map), do: {:ok, map}
  def dump(_term), do: :error


  defp atomize(map) do
    ExUtils.Map.symbolize_keys(map)
  end

end
