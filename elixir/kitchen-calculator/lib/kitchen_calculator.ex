defmodule KitchenCalculator do

  # in milliliters
  @cup 240
  @fluid_ounce 30
  @teaspoon 5
  @tablespoon 15

  def get_volume({_, volume}), do: volume

  def to_milliliter({:cup, volume}), do: {:milliliter, volume * @cup}
  def to_milliliter({:fluid_ounce, volume}), do: {:milliliter, volume * @fluid_ounce}
  def to_milliliter({:teaspoon, volume}), do: {:milliliter, volume * @teaspoon}
  def to_milliliter({:tablespoon, volume}), do: {:milliliter, volume * @tablespoon}
  def to_milliliter(volume_pair), do: volume_pair

  def from_milliliter({_, volume}, :cup), do: {:cup, volume / @cup}
  def from_milliliter({_, volume}, :fluid_ounce), do: {:fluid_ounce, volume / @fluid_ounce}
  def from_milliliter({_, volume}, :teaspoon), do: {:teaspoon, volume / @teaspoon}
  def from_milliliter({_, volume}, :tablespoon), do: {:tablespoon, volume / @tablespoon}
  def from_milliliter(volume_pair, :milliliter), do: volume_pair

  def convert(volume_pair, unit), do: volume_pair |> to_milliliter |> from_milliliter(unit)
end
