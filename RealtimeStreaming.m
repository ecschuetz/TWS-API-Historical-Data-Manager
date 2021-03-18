%% Interactive Brokers Streaming Data Workflow Example

% Connect to Interactive Brokers Trader Workstation
ib = ibtws(get(handles.edit9,'String'),str2double(get(handles.edit8,'String')),str2double(get(handles.edit10,'String')));
%acctno=get(handles.edit7,'String');
%acc=accounts(ib,acctno);
set(handles.edit12,'string','Configuration updated');
% Create example dialog to display realtime data


% Create contracts
ibContract1 = ib.Handle.createContract;
ibContract1.symbol = get(handles.edit2,'String');
ibContract1.secType = get(handles.edit3,'String');
ibContract1.exchange = get(handles.edit4,'String'); % SMART - NYSE
ibContract1.primaryExchange = get(handles.edit5,'String'); % ISLAND - NASDAQ
ibContract1.currency = get(handles.edit6,'String');



% Request streaming data
f = '100';  %Request Market Data Sending Error - 

%BLDP = realtime(ib,ibContract3,f);
%BID_SIZE_BLDP=ibBuiltInRealtimeData.BID_SIZE;
%ib.Handle.cancelMktData(BLDP)
%SNDL = realtime(ib,ibContract2,f);
%ib.Handle.cancelMktData(SNDL)
%CSCO = realtime(ib,ibContract1,f);
%ib.Handle.cancelMktData(CSCO)
 
%%%----EVENTHANDLER----%%%
  
contracts = {ibContract1};
%tickerID=realtime(ib,contracts,f,'eventhandler')
startdate = floor(now) - str2double(get(handles.edit11,'String'));
enddate = floor(now);
%{
i=1;
n=1;
for i = 0:5
tickerID(n,:) = realtime(ib,ibContract3,f);
LastPrice2(n,:)=ibBuiltInRealtimeData.LAST_PRICE;
i=i+1;
n=n+1;
end
%}
% Contract details
%[x2,reqid] = contractdetails(ib,ibContract1);
%current=getdata(ib,ibContract1)
check=getdata(ib,ibContract1);


handles.ib=ib;
guidata(hObject, handles);
handles.ibContract1=ibContract1;
guidata(hObject, handles);
handles.startdate=startdate;
guidata(hObject, handles);
handles.enddate=enddate;
guidata(hObject, handles);
                
set(handles.pushbutton1,'Enable','off')
set(handles.pushbutton2,'Enable','on')
set(handles.pushbutton3,'Enable','on')
set(handles.edit2,'Enable','off')
set(handles.edit3,'Enable','off')
set(handles.edit4,'Enable','off')
set(handles.edit5,'Enable','off')
set(handles.edit6,'Enable','off')
set(handles.edit11,'Enable','off')


