defmodule BirdCount do
  def today([todays_bird_count | _rest]), do: todays_bird_count
  def today([]), do: nil

  def increment_day_count([todays_bird_count | rest]), do: [todays_bird_count + 1 | rest]
  def increment_day_count([]), do: [1]

  def has_day_without_birds?([0 | _rest]), do: true
  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([_todays_bird_count | rest]), do: has_day_without_birds?(rest)


  def total(list), do: total(list, 0)

  defp total([], accumulator), do: accumulator
  defp total([todays_bird_count | rest], accumulator), do: total(rest, accumulator + todays_bird_count)

  def busy_days(list), do: busy_days(list, 0)

  defp busy_days([], accumulator), do: accumulator
  defp busy_days([todays_bird_count | rest], accumulator) when todays_bird_count >= 5, do: busy_days(rest, accumulator + 1)
  defp busy_days([_todays_bird_count | rest], accumulator), do: busy_days(rest, accumulator)

end
