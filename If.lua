local If = {}

function If.ElseC(condition, kill)
  return {
    Else = function(func)
      local tmp = not condition and not kill and func and func()
      return not func and not condition and {End = If.End, If = function(c) return If.ThenC(c, kill) end}
             or not func and condition and {End = If.End, If = function() return If.ThenC(false, true) end}
             or {End = If.End}
    end,
    End = If.End
  }
end

function If.ThenC(condition, kill)
  return {
    Then = function(func)
      local tmp = condition and func and func()
      kill = kill or condition
      return If.ElseC(condition, kill)
    end
  }
end

function If.If(condition, kill)
  return If.ThenC(condition)
end

function If.End()
end

return If.If
