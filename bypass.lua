 local player_gui = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
 if (not player_gui:FindFirstChildOfClass('Actor')) then
     warn('Bypass Loading...')
     local connection; connection = player_gui.ChildAdded:Connect(function(child)
     if (child.ClassName == 'Actor') then
         for _, client in next, child:GetChildren() do
             if (client:IsA('Script')) then
                 client.Disabled = true
                 client.Parent = player_gui
                 client.Disabled = false
             else
                 client.Parent = player_gui
             end
         end
         task.wait()
         child:Destroy()
         warn('Actors have been bypassed')
         connection:Disconnect()
     end
 end)
 end
