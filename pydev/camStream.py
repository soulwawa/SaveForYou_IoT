from flask import Flask, Response
import subprocess, time, threading, os

app = Flask(__name__)

def streaming():
    cmd = "camstream"
    os.system(cmd)

@app.route("/cam/<issue>/")
def cam(issue):
    try:
        camcmd = 'raspistill -t 500 -o cam/event.png -w 800 -h 480'
        os.system(camcmd)

        f = open('cam/event.png', 'rb')
        pic = f.read()
        f.close()
        print('picture transfer...')
        time.sleep(0.5)

    except Exception as e:
        print("camError : " + str(e))

    return Response(pic, mimetype="image/png")


@app.route("/stream/<state>/")
def stream(state):
    if state == "0":
        streamcmd = 'fuser -k -n tcp 5000'
        os.system(streamcmd)
        print('off streaming...')
        time.sleep(0.5)
    else:
        pid1 = os.fork()
        while 1 :
            if pid1 :
                print("streaming...")
            else:
                streaming()
            break

        time.sleep(0.01)
    return "streaming control"






if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001, debug=False)