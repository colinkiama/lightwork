import raylib;
import lightwork.scenes;

void main()
{
	validateRaylibBinding();
	InitWindow(800, 600, "Lightwork");
	SetTargetFPS(60);

	MainScene currentScene = new MainScene();

	while (!WindowShouldClose())
	{
		currentScene.processInput();
		currentScene.update();
		currentScene.render();
	}

	CloseWindow();
}
