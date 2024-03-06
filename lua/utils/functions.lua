return {
  --- Picks a random value from the provided table
  --- @param table table
  --- @return any
  pickRandomValue = function(table)
    math.randomseed(os.time())
    local randomIndex = math.random(#table)
    return table[randomIndex]
  end,
}
