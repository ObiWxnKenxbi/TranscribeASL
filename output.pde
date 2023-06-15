import oscP5.*;
import netP5.*;

OscP5 oscP5;

String inputText = "";
String address = "/wek/outputs";
Button deleteButton;
Button startRecordingButton;
Button stopRecordingButton;
boolean isRecording = false;

void setup() {
  size(1000, 150);
  textSize(24);
  oscP5 = new OscP5(this, 9000);

  int buttonWidth = 100;
  int buttonHeight = 30;
  int buttonSpacing = 80;
  int buttonY = 110;

  deleteButton = new Button("Clear", width / 2 - buttonWidth - buttonSpacing, buttonY, buttonWidth, buttonHeight);
  deleteButton.onClick(() -> {
    inputText = "";
  });

  startRecordingButton = new Button("Start Recording", width / 2 - buttonWidth / 2, buttonY, buttonWidth, buttonHeight);
  startRecordingButton.onClick(() -> {
    isRecording = true;
  });

  stopRecordingButton = new Button("Stop Recording", width / 2 + buttonSpacing, buttonY, buttonWidth, buttonHeight);
  stopRecordingButton.onClick(() -> {
    isRecording = false;
  });
}

void draw() {
  background(255);
  fill(0);
  text(inputText, 500, 50);

  deleteButton.display();
  startRecordingButton.display();
  stopRecordingButton.display();
}

void oscEvent(OscMessage msg) {
  if (isRecording && msg.checkAddrPattern(address)) {
    float[] values = new float[3];

    for (int i = 0; i < 3; i++) {
      values[i] = msg.get(i).floatValue();
    }

    for (int i = 0; i < values.length; i++) {
      float value = values[i];
      if (value > 0 && value < 10) {
        char letter = (char) ('A' + (int) value - 1);
        if (letter != 'J' && letter != 'Z') {
          inputText += letter;
        }
      }
    }
  }
}

void keyTyped() {
  if (key != BACKSPACE && key != DELETE) {
    inputText += key;
  } else if (inputText.length() > 0) {
    inputText = inputText.substring(0, inputText.length() - 1);
  }
}

class Button {
  String label;
  float x, y, width, height;
  Runnable onClickCallback;

  Button(String label, float x, float y, float width, float height) {
    this.label = label;
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }

  void onClick(Runnable callback) {
    onClickCallback = callback;
  }

  void display() {
    stroke(0);
    if (isMouseOver()) {
      fill(color(200, 162, 255));
    } else {
      fill(color(150, 162, 255));
    }
    rect(x, y, width, height, 5);
    textAlign(CENTER, CENTER);
    fill(255);
    textSize(12);
    text(label, x + width / 2, y + height / 2);
  }

  void mousePressed() {
    if (isMouseOver() && onClickCallback != null) {
      onClickCallback.run();
    }
  }

  boolean isMouseOver() {
    return mouseX >= x && mouseX <= x + width && mouseY >= y && mouseY <= y + height;
  }
}

void mousePressed() {
  deleteButton.mousePressed();
  startRecordingButton.mousePressed();
  stopRecordingButton.mousePressed();
}
