defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name |> String.trim |> String.first
  end

  def initial(name) do
    "#{HighSchoolSweetheart.first_letter(String.upcase(name))}."
  end

  def initials(full_name) do
    splitten_name = String.split(full_name, " ")
    first_name = Enum.at(splitten_name, 0)
    second_name = Enum.at(splitten_name, 1)
    "#{HighSchoolSweetheart.initial(first_name)}" <> " " <> "#{HighSchoolSweetheart.initial(second_name)}"
  end

  def pair(full_name1, full_name2) do
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
