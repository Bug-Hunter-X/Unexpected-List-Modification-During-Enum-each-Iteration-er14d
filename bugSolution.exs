```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using List.filter
list_filtered = Enum.filter(list, fn x -> x != 3 end)
IO.puts("Solution 1: ")
IO.inspect(list_filtered)

#Solution 2: Using Enum.reduce
list_reduced = Enum.reduce(list, [], fn x, acc -> 
  if x != 3 do
    [x | acc]
  else
    acc
  end
end)
IO.puts("Solution 2: ")
IO.inspect(List.reverse(list_reduced))
```