import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

import "player"
import "enemySpawner"
import "scoreDisplay"
import "screenShake"

local pd <const> = playdate
local gfx <const> = pd.graphics

local screenShakeSprite = ScreenShake()

createScoreDisplay()
Player(30, 120)
startSpawner()

function resetGame()
	resetScore()
	clearEnemies()
	stopSpawner()
	startSpawner()
	--setShakeAmount(10)
end

function setShakeAmount()
	screenShakeSprite:setShakeAmount(amount)
end

function pd.update()
	gfx.sprite.update()
	pd.timer.updateTimers()
end