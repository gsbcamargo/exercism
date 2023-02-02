defmodule KitchenCalculator do

  # in milliliters
  @us_cup 240
  @us_fluid_ounce 30
  @us_teaspoon 5
  @us_tablespoon 15

  def get_volume({_, volume}), do: volume

  def to_milliliter({:cup, volume}), do: {:milliliter, volume * @us_cup}
  def to_milliliter({:fluid_ounce, volume}), do: {:milliliter, volume * @us_fluid_ounce}
  def to_milliliter({:teaspoon, volume}), do: {:milliliter, volume * @us_teaspoon}
  def to_milliliter({:tablespoon, volume}), do: {:milliliter, volume * @us_tablespoon}
  def to_milliliter(volume_pair), do: volume_pair

  def from_milliliter({_, volume}, :cup), do: {:cup, volume / @us_cup}
  def from_milliliter({_, volume}, :fluid_ounce), do: {:fluid_ounce, volume / @us_fluid_ounce}
  def from_milliliter({_, volume}, :teaspoon), do: {:teaspoon, volume / @us_teaspoon}
  def from_milliliter({_, volume}, :tablespoon), do: {:tablespoon, volume / @us_tablespoon}
  def from_milliliter(volume_pair, :milliliter), do: volume_pair


  def convert(volume_pair, unit) do
    volume_pair |> to_milliliter |> from_milliliter(unit)
  end
end
