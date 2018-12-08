function GetColorValue(iMode)
  local rValue = 1
  local gValue = 1
  local bValue = 1
  if iMode == 2 then
    rValue = 1.4
    gValue = 1.4
    bValue = 1.4
  else
    rValue = 3
    gValue = 3
    bValue = 3
  end
  BURNINGCOLOR(rValue, gValue, bValue)
end
