
  <h3 align="center">Historical Data Management and Configuration for a Neural Net Fitting Process </h3>





<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/ecschuetz/TWS-API-Historical-Data-Manager">
    <img src="images/ConfigTable.png" alt="Logo">
  </a>

  <h3 align="center">GUI for Testing Connection, Save and Manage Datasheets</h3>

  <p align="center">
    TWS API for a simple request and managing of historical Stock Information
    <br />
    <a href="https://github.com/ecschuetz/TWS-API-Historical-Data-Manager"><strong>Explore the docs »</strong></a>
    <br />
    <br />
      <a href="https://github.com/ecschuetz/TWS-API-Historical-Data-Manager/issues">Report Bug</a>
    ·
    <a href="https://github.com/ecschuetz/TWS-API-Historical-Data-Manager/issues">Request Feature</a>
  </p>
</p>




<!-- ABOUT THE PROJECT -->
## About The Project

Neural Net Fitting of given historical Market Data. The Given Arguments can be checked for Input and Output values. After Setting Up Input & Output, you be able to create a neural Net with
```sh
 nftool
  ```

v.1.0 receives historical information.
the command (see https://de.mathworks.com/help/releases/R2020b/trading/ibtws.history.html)
```sh
 d= history(ib,ibContract,startdate,enddate,ticktype,period,tradehours)
  ```
  includes: 

- Numeric representation of a date

- Open price

- High price

- Low price

- Close price

- Volume

- Bar count

- Weighted average price

- Flag indicating if there are gaps in the bar









<!-- GETTING STARTED -->
## Getting Started
Make sure you have the latest TWS API see: https://interactivebrokers.github.io

If you have a MATLAB license, just get all .m and the .fig files and Run Programm.m

If you dont have MATLAB, install the .exe file in the Excecutable folder

If you are able to Run the GUI, make sure youre Trader Workstation is set up correctly with input arguments you choose in the GUI

### How it works

click connect to make to run the given arguments from the API-Config TWS Panel and the Input Panel

Run 'Receive Data' button to get the historical Data

Select Input and Output arguments to build your own neural Network with nftool (click the 'Neural Net Fitting' button)

Save the historical Data by clicking 'Save to .xls'.

The Sheet will be located where the Programm.m or .exe is located

Click Disconnect 

Start your next analysis

