from app import app

@app.route('/name')

def get_user_name():

    return app.config['USER_NAME']

@app.route('/work')

def get_user_work():
    
    return app.config['USER_WORK']