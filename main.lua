function love.load() 
	success = love.window.setMode(1000, 750, {fullscreen = false, resizable = true})
	image = love.graphics.newImage("room.png")
	font = love.graphics.setNewFont(12)
	bgcolor = love.graphics.setBackgroundColor(0, 0, 0)
	num = 0;
	numx = 0;
end

function love.update(dt)
	if love.keyboard.isDown("up") then
		num = num + 150 * dt -- this would increment num by 100 per second
	elseif love.keyboard.isDown("down") then
		num = num - 150 * dt
	end
	if love.keyboard.isDown("left") then
		numx = numx + 150 * dt 
	elseif love.keyboard.isDown("right") then
		numx = numx - 150 * dt 
	end
end

function love.draw()
	love.graphics.draw(image, numx, num, 0, 0.5, 0.5, -50, -10)
end