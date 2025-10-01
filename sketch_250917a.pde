void setup() {
  size(400, 400);
  background(255);

  // 星を3つ表示
  drawStar(100, 100);
  drawStar(200, 200);
  drawStar(300, 100);
}

// ⭐️ 超シンプル版
void drawStar(float x, float y) {
  fill(255, 204, 0);
  stroke(0);

  beginShape();
vertex(x, y - 20);      // 一番上の外側の頂点（上方向に20）
vertex(x + 10, y - 5);  // 右上の内側（右へ10, 上へ5）
vertex(x + 20, y - 5);  // 右の外側（右へ20, 上へ5）
vertex(x + 12, y + 5);  // 右下の内側（右へ12, 下へ5）
vertex(x + 15, y + 20); // 右下の外側（右へ15, 下へ20）
vertex(x, y + 10);      // 真下の内側（下へ10）
vertex(x - 15, y + 20); // 左下の外側（左へ15, 下へ20）
vertex(x - 12, y + 5);  // 左下の内側（左へ12, 下へ5）
vertex(x - 20, y - 5);  // 左の外側（左へ20, 上へ5）
vertex(x - 10, y - 5);  // 左上の内側（左へ10, 上へ5）



  endShape(CLOSE);
}
