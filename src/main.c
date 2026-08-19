#include "raylib.h"

int main() {

    InitWindow(800, 800, "CHIP-8 emulator");

    SetTargetFPS(60);

    while (!WindowShouldClose()) {
        BeginDrawing();
        ClearBackground(BLACK);
        DrawText("hello", 10, 20, 20, WHITE);
        EndDrawing();
    }

    CloseWindow();
    return 0;
}