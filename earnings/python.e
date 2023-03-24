from flask import Flask, render_template, session

app = Flask(__name__)
app.secret_key = 'your_secret_key'

# Define package information (in real application, this data would come from database)
packages = {
    'bronze': {'price': 900, 'daily_earnings': 60},
    'silver': {'price': 2500, 'daily_earnings': 120},
    'gold': {'price': 4500, 'daily_earnings': 200},
    'combined': {'price': 10000, 'daily_earnings': 300}
}

# Define route for earnings page
@app.route('/earnings')
def earnings():
    # Check if user is logged in
    if 'username' not in session:
        return redirect('/')
    
    # Retrieve user's package information (in real application, this data would come from database)
    user_packages = {
        'bronze': True,
        'silver': True,
        'gold': False,
        'combined': True
    }
    
    # Calculate total earnings for each package
    total_earnings = {}
    for package in user_packages:
        if user_packages[package]:
            daily_earnings = packages[package]['daily_earnings']
            total_earnings[package] = daily_earnings * 90
        else:
            total_earnings[package] = 0
    
    # Render the earnings page with the package information
    return render_template('earnings.html', username=session['username'], packages=user_packages, total_earnings=total_earnings)

if __name__ == '__main__':
    app.run(debug=True)
