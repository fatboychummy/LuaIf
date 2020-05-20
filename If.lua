local If = {}

local function ElseC(condition)
  return {
    Else = function(func)
      local tmp = not condition and func and func()
      return not func and If or {End = If.End}
    end,
    End = If.End
  }
end

local function ThenC(condition)
  return {
    Then = function(func)
      local tmp = condition and func and func()
      return ElseC(condition)
    end
  }
end

function If.If(condition)
  return ThenC(condition)
end

function If.End()
end

return If.If
