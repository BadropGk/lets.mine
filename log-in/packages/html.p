<!DOCTYPE html>
<html>
  <head>
    <title>Packages</title>
  </head>
  <body>
    <h1>Packages</h1>
    <p>Welcome to our packages page. Please select a package to purchase.</p>
    <ul>
      <li>Bronze: Ksh 900</li>
        <ul>
          <li>Daily Earning: Ksh 60</li>
        </ul>
        <form action="/balance" method="POST">
          <input type="hidden" name="package" value="bronze">
          <input type="submit" value="Pay Now">
        </form>

      <li>Silver: Ksh 2500</li>
        <ul>
          <li>Daily Earning: Ksh 120</li>
        </ul>
        <form action="/balance" method="POST">
          <input type="hidden" name="package" value="silver">
          <input type="submit" value="Pay Now">
        </form>

      <li>Gold: Ksh 4500</li>
        <ul>
          <li>Daily Earning: Ksh 200</li>
        </ul>
        <form action="/balance" method="POST">
          <input type="hidden" name="package" value="gold">
          <input type="submit" value="Pay Now">
        </form>

      <li>Combined: Ksh 10000</li>
        <ul>
          <li>Daily Earning: Ksh 300</li>
        </ul>
        <form action="/balance" method="POST">
          <input type="hidden" name="package" value="combined">
          <input type="submit" value="Pay Now">
        </form>
    </ul>
  </body>
</html>

