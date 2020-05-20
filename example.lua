local If = require "If"

local function checkVal(val)
  If(val == 1).Then(
    function()
      print("Val is 1")
    end
  ).Else().If(val == 2).Then(
    function()
      print("Val is 2")
    end
  ).Else().If(val == 3).Then(
    function()
      print("Val is 3")
    end
  ).Else().If(val == 4).Then(
    function()
      print("Val is 4")
    end
  ).Else().If(val == 5).Then(
    function()
      print("Val is 5")
    end
  ).Else().If(val == 6).Then(
    function()
      print("Val is 6")
    end
  ).Else().If(val == 7).Then(
    function()
      print("Val is 7")
    end
  ).Else().If(val == 8).Then(
    function()
      print("Val is 8")
    end
  ).Else().If(val == 9).Then(
    function()
      print("Val is 9")
    end
  ).Else().If(val == 10).Then(
    function()
      print("Val is 10")
    end
  ).Else(
    function()
      print("Val is unknown")
    end
  ).End()
end

for i = 1, 11 do
  print(i)
  checkVal(i)
end
