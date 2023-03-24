@app.route('/balance', methods=['POST'])
@login_required
def balance():
    # retrieve package from form data
    package = request.form['package']

    # find user in database
    user = User.query.get(current_user.id)

    # update user's balance and daily earning based on selected package
    if package == 'bronze':
        user.balance += 900
        user.daily_earning = 60
    elif package == 'silver':
        user.balance += 2500
        user.daily_earning = 120
    elif package == 'gold':
        user.balance += 4500
        user.daily_earning = 200
    elif package == 'combined':
        user.balance += 10000
        user.daily_earning = 300

    # save changes to database
    db.session.commit()

    # redirect user to balance page
    return redirect('/balance')

