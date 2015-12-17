import sys
import time
import logging
import os
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

DIR = '/var/www/html/92jFBTrivWGB3gkd828403FBJenvbwbncbvs2/'
intruder=len([name for name in os.listdir(DIR) if os.path.isfile(os.path.join(DIR, name))])
print intruder

def pushNotify(tokens):
    for token in tokens:
	token=token.replace('\n','');
	print "Notifying "+token;
        push_command = "curl --header 'Access-Token: "+token+"' --header 'Content-Type: application/json' --data-binary '{\"body\":\"INTRUDER DETECTED!\",\"title\":\"WARNING: INTRUDER!\",\"type\":\"file\",\"file_type\":\"image/jpeg\",\"file_url\":\"http://cctv-scm.noip.me/92jFBTrivWGB3gkd828403FBJenvbwbncbvs2/intruder"+str(intruder)+".jpg\"}' --request POST https://api.pushbullet.com/v2/pushes"
	print push_command;
        os.system(push_command)

class IntrusionHandler(FileSystemEventHandler):
    def on_modified(self, event):
        print "Got it!"
	global intruder
	intruder=intruder+1
	pic_command = "raspistill --nopreview -w 1280 -h 720 -q 75 -o /var/www/html/92jFBTrivWGB3gkd828403FBJenvbwbncbvs2/intruder"+str(intruder)+".jpg -t 1000"
	os.system(pic_command)
	with open("access/authorized") as f:
	    tokens = f.readlines()
	pushNotify(tokens);

if __name__ == "__main__":
    path = sys.argv[1] if len(sys.argv) > 1 else '.'
    event_handler = IntrusionHandler()
    observer = Observer()
    observer.schedule(event_handler, path)
    observer.start()
    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()
