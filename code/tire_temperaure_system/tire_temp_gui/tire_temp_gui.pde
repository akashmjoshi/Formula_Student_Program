// Main controller / model file for the the Processing Brain Grapher.

// See README.markdown for more info.
// See http://frontiernerds.com/brain-hack for a tutorial on getting started with the Arduino Brain Library and this Processing Brain Grapher.

// Latest source code is on https://github.com/kitschpatrol/Processing-Brain-Grapher
// Created by Eric Mika in Fall 2010, last update Spring 2012

import processing.serial.*;
import controlP5.*;

ControlP5 controlP5;
ControlFont font;

Serial serial;

Channel[] channels = new Channel[12];
Monitor[] monitors = new Monitor[12];
Graph graph1;
Graph graph2;
Graph graph3;
Graph graph4;
ConnectionLight connectionLight;

int packetCount = 0;
int globalMax = 0;
String scaleMode;

void setup() {
  // Set up window
  size(1024, 768);//size(width,height)
  frameRate(60);
  smooth();
  frame.setTitle("Processing Brain Grapher");  

  // Set up serial connection
  println("Find your Arduino in the list below, note its [index]:\n");
  println(Serial.list());
  serial = new Serial(this, Serial.list()[0], 9600);	
  serial.bufferUntil(10);

  // Set up the ControlP5 knobs and dials
  controlP5 = new ControlP5(this);
  controlP5.setColorLabel(color(0));	
  controlP5.setColorBackground(color(0));
  controlP5.disableShortcuts();	
  controlP5.disableMouseWheel();
  controlP5.setMoveable(false);
  font = new ControlFont(createFont("DIN-MediumAlternate", 12), 12);

  // Create the channel objects
//  channels[0] = new Channel("Signal Quality", color(0), "");
  channels[0] = new Channel("FR_in", color(100), "");
  channels[1] = new Channel("FR_cen", color(50), "");
  channels[2] = new Channel("FR_out", color(219, 211, 42), "");
  channels[3] = new Channel("RR_in", color(245, 80, 71), "");
  channels[4] = new Channel("RR_cen", color(237, 0, 119), "");
  channels[5] = new Channel("RR_out", color(212, 0, 149), "");
  channels[6] = new Channel("FL_in", color(158, 18, 188), "");
  channels[7] = new Channel("FL_cen", color(116, 23, 190), "");
  channels[8] = new Channel("FL_out", color(39, 25, 159), "");
  channels[9] = new Channel("RL_in", color(23, 26, 153), "");
  channels[10] = new Channel("RL_cen", color(23, 26, 153), "");
  channels[11] = new Channel("RL_out", color(23, 26, 153), "");

  // Manual override for a couple of limits.
  channels[0].minValue = 0;
  channels[0].maxValue = 200;
  channels[1].minValue = 0;
  channels[1].maxValue = 100;
  channels[2].minValue = 0;
  channels[2].maxValue = 100;
  channels[0].allowGlobal = false;
  channels[1].allowGlobal = false;
  channels[2].allowGlobal = false;

  // Set up the monitors, skip the signal quality
  for (int i = 0; i < monitors.length; i++) {
    monitors[i] = new Monitor(channels[i ], i * (width / 12), height / 2, width / 12, height / 2);
  }

  monitors[monitors.length - 1].w += width % monitors.length;

  // Set up the graph
  graph1 = new Graph(50, 10,width/3 ,height / 5);
graph2 = new Graph(512,10,width/3,height / 5);
graph3 = new Graph(50,height /4,width/3 ,height /5);
graph4 = new Graph(512,height / 4,width/3,height / 5);
  // Set yup the connection light
  connectionLight = new ConnectionLight(width - 98, 10, 20);
}

void draw() {
  // Keep track of global maxima
  if (scaleMode == "Global" && (channels.length > 3)) {
    for (int i = 3; i < channels.length; i++) {
      if (channels[i].maxValue > globalMax) globalMax = channels[i].maxValue;
    }
  }

  // Clear the background
  background(255);

  // Update and draw the main graph
  graph1.update();
  graph1.draw();
  graph2.update();
 graph2.draw();
 graph3.update();
 graph3.draw();
 graph4.update();
 graph4.draw();
  // Update and draw the connection light
  connectionLight.update();
  connectionLight.draw();

  // Update and draw the monitors
  for (int i = 0; i < monitors.length; i++) {
    monitors[i].update();
    monitors[i].draw();
  }
}

void serialEvent(Serial p) {
  // Split incoming packet on commas
  // See https://github.com/kitschpatrol/Arduino-Brain-Library/blob/master/README for information on the CSV packet format
  String[] incomingValues = split(p.readString(), ',');

  // Verify that the packet looks legit
  if (incomingValues.length > 1) {
    packetCount++;

    // Wait till the third packet or so to start recording to avoid initialization garbage.
    if (packetCount > 3) {
      for (int i = 0; i < incomingValues.length; i++) {
        int newValue = Integer.parseInt(incomingValues[i].trim());

        // Zero the EEG power values if we don't have a signal.
        // Can be useful to leave them in for development.
        if ((Integer.parseInt(incomingValues[0]) == 200) && (i > 2)) newValue = 0;

        channels[i].addDataPoint(newValue);
      }
    }
  }
}


// Utilities

// Extend Processing's built-in map() function to support the Long datatype
long mapLong(long x, long in_min, long in_max, long out_min, long out_max) { 
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

// Extend Processing's built-in constrain() function to support the Long datatype
long constrainLong(long value, long min_value, long max_value) {
  if (value > max_value) return max_value;
  if (value < min_value) return min_value;
  return value;
}