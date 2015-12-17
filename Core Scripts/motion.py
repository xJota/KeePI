import RPi.GPIO as GPIO
import time
import os

GPIO.setmode(GPIO.BCM)
PIR_PIN = 4
GPIO.setup(PIR_PIN, GPIO.IN)

def MOTION(PIR_PIN):
        print "Motion Detected!"
        os.system("echo $(date) 1 | ncat -u raspberrypicam 5656")
        GPIO.remove_event_detect(PIR_PIN)
        time.sleep(10)
        GPIO.add_event_detect(PIR_PIN, GPIO.RISING, callback=MOTION)

print "PIR Module Test (CTRL+C to exit)"
time.sleep(2)
print "Ready"

try:
        GPIO.add_event_detect(PIR_PIN, GPIO.RISING, callback=MOTION)
        while 1:
                time.sleep(1000)
except KeyboardInterrupt:
        print "Quit"
        GPIO.cleanup()
