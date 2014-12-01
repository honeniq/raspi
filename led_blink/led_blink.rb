
exp = open("/sys/class/gpio/export", "w")
exp.write(24)
exp.close
 
dir = open("/sys/class/gpio/gpio24/direction", "w")
dir.write("out")
dir.close
 
out = 1
50.times do
  red = open("/sys/class/gpio/gpio24/value", "w")
  red.write(out)
  red.close
  out = out == 1 ? 0 : 1
  sleep 0.1
end
 
uexp = open("/sys/class/gpio/unexport", "w")
uexp.write(24)
uexp.close
