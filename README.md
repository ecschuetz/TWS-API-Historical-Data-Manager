
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

Neural Net Fitting of given historical Market Data. The Given Arguments can be checked for Input and Output values. After Setting Up Input & Output, you be able to create a neural Net (see https://de.mathworks.com/help/deeplearning/gs/fit-data-with-a-neural-network.html)
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
Make sure you have the latest stable version of TWS API see: https://interactivebrokers.github.io

If you have a MATLAB license, just get all .m and the .fig files and Run
```sh
 Programm.m
  ```

If you dont have MATLAB, install the Windows Excecutable <a href="https://github.com/ecschuetz/TWS-API-Historical-Data-Manager/blob/master/Excecutable/TWS_API_Historical-Data-Manager.exe">TWS_API_Historical-Data-Manager.exe</a>

If you are able to Run the GUI, make sure youre Trader Workstation is set up correctly with input arguments you choose in the GUI

### How it works

- Press 'Connect' to run the given arguments from the API-Config TWS Panel and the Input Panel.(see <a href="https://github.com/ecschuetz/TWS-API-Historical-Data-Manager/blob/master/RealtimeStreaming.m">RealtimeStreaming.m</a>)

- Press 'Receive Data' button to get the historical Data from your liveStream (see <a href="https://github.com/ecschuetz/TWS-API-Historical-Data-Manager/blob/master/Plotting.m">Plotting.m</a>)

- Select Input and Output arguments to build your own neural Network with nftool 

- Press the 'Neural Net Fitting' button (see <a href="https://github.com/ecschuetz/TWS-API-Historical-Data-Manager/blob/master/neuralNetFitting.m">neuralNetFitting.m</a>)

- Save the historical Data by clicking 'Save to .xls'.

- The Sheet will be located where the Programm.m or .exe is located

- Press 'Disconnect' 

- Start your next analysis

