from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/api/call/', methods=['POST'])
def call():
    content = request.json
    callPlaced = False

    if("testplivo1" in content["destination"] or "testplivo2" in content["destination"]):
        # Place a call, if successfull set callPlaced to true and return 201
        callPlaced = True
        return jsonify({"message": "OK"}), 201
    # else send 500
    if callPlaced == False:
        return jsonify({"message":"error"}), 500

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=80)
