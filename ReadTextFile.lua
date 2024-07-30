function ReadTextFile(filePath)
    local file = io.open(filePath, "r")
    if not file then return "Error: Could not open file" end
    local content = file:read("*all")
    file:close()
    return content
end

function Initialize()
    path = "C:/Users/sudar/OneDrive/Documents/Rainmeter/Skins/Google_Calendar_Dekstop_Widget/events.txt"
end

function Update()
    return ReadTextFile(path)
end
