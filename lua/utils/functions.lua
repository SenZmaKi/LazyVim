return {
  --- Picks a random value from the provided table
  --- @param table table
  --- @return any
  pick_random_value = function(table)
    math.randomseed(os.time())
    local random_index = math.random(#table)
    return table[random_index]
  end,
}
