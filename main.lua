function love.load() 
	success = love.window.setMode(1000, 750, {fullscreen = false, resizable = true})
	image = love.graphics.newImage("room.png")
	mcsides = {love.graphics.newImage("mc.png"), love.graphics.newImage("mcup.png"), love.graphics.newImage("mcleft.png"), love.graphics.newImage("mcright.png")}
	mc = mcsides[1]
	font = love.graphics.setNewFont(12)
	bgcolor = love.graphics.setBackgroundColor(0, 0, 0)
	num = 0;
	numx = 0;
end

function love.update(dt)
	if love.keyboard.isDown("up") then
		num = num + 150 * dt -- this would increment num by 100 per second
		mc = mcsides[2]
	elseif love.keyboard.isDown("down") then
		num = num - 150 * dt
		mc = mcsides[1]
	end
	if love.keyboard.isDown("left") then
		numx = numx + 150 * dt 
		mc = mcsides[3]
	elseif love.keyboard.isDown("right") then
		numx = numx - 150 * dt 
		mc = mcsides[4]
	end
end

function scale(img) 
	sy = 140 / img:getHeight() 
	sx = 110 / img:getWidth() 
	return sx, sy
end

function love.draw()
	love.graphics.draw(image, numx, num, 0, 0.5, 0.5, -50, -10)
	sx, sy = scale(mc)
	love.graphics.draw(mc, love.graphics.getWidth() / 2, love.graphics.getHeight() / 2, 0, sx, sy)
end