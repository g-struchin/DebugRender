local Debug1 = {}
Debug1.CallFastDebug = Menu.AddKeyOption({"Debug1"}, "Fast dabug", Enum.ButtonCode.KEY_F)

function Debug1.OnUpdate()
    if Menu.IsKeyDownOnce(Debug1.CallFastDebug) then
        Log.Write(Entity.GetOrigin(Heroes.GetLocal()):__tostring())
    end
end
function Debug1.OnDraw()
    local vector1 = Vector(0,0,0)
    local vector2 = Entity.GetOrigin(Heroes.GetLocal())
	local x1, y1, _ = Renderer.WorldToScreen(vector1)
    local x2, y2, _ = Renderer.WorldToScreen(vector2)
    Renderer.DrawLine(x1, y1, x2, y2)
end

return Debug1