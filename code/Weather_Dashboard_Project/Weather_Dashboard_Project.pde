void setup() {
  size(400,500);
  update_data();
  
  frameRate(1);
}

void draw()
{
  background(0);
  textSize(20);
  fill(250);
  text("GPS Location: " + lat + " , " + lon, 50, 100);
  text("Sunrise: " + sunR, 50, 125);
  text("Sunset: " + sunS, 50, 150);
  text("Temperature: " + temp, 50, 175);
  text("Atmospheric Pressure: " + pressure, 50, 200);
  text("Humidity: " + humidity + "%", 50, 225);
  text("Wind Speed: " + windS + "kps", 50, 250);
  text("Wind Direction: " + windD, 50, 275);
  text("Cloud Coverage: " + cloud + "%", 50, 300);
  text("Condition: " + condition + " , " + description, 50, 325);
  image(weatherIcon, 50, 350);
  
  if((minute()%15 == 0) && (second() == 1))
  {
    update_data();
  }
}