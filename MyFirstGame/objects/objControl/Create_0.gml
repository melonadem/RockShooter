/// @Keep tabs on score and lives.
global.highScore = 2000;
global.gameScore = 0;
global.livesRemaining = 4;
draw_set_font(fntGame);
second = 60;
deathTimer = 0;
scoreDiff = global.gameScore / global.highScore;
highScoreObtain = false;