boolean mouseInRect(float x, float y, float w, float h) {
  return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
}
void mousePressed() {
  if(scene == 1){
  if (mouseInRect(width/2 - 200, height/2 + 200, 400, 100)) {
    scene = 2;
    print("Mouse pressed to go to scene 2 at ");
    print(mouseX);
    print(", ");
    print(mouseY);
    println(".");
    }
  }
}
