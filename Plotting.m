set(handles.pushbutton3,'Enable','off')
f = waitbar(0,'Get historical data...');
set(handles.edit12,'string','Receiving data...');
cla(handles.axes1)
    set(handles.uitable1, 'Data', {})
    
    if get(handles.checkbox1,'value')==1
        d = history(handles.ib,handles.ibContract1,handles.startdate,handles.enddate);
    end
    if get(handles.checkbox2,'value')==1
        d = history(handles.ib,handles.ibContract1,handles.startdate,handles.enddate,'BID','1 week');
    end
     if get(handles.checkbox3,'value')==1
        d = history(handles.ib,handles.ibContract1,handles.startdate,handles.enddate,'','1 month');
    end
 
assignin('base','d',d)
if isa(d(1:1),'double')==1 
 waitbar(.50,f,'Got the Data')
  pause(1)
   waitbar(1,f)
 close(f)
    set(handles.uitable1,'DATA', d);
    axes(handles.axes1);
plot(d(:,8), 'Parent', handles.axes1);
xlabel('Time lapse in days per period');
ylabel('Weighted average price');
set(handles.pushbutton4,'Enable','on')
set(handles.pushbutton5,'Enable','on')

 set(handles.edit12,'string','Done');
    
else
    if n<4
    set(handles.edit12,'string',d);
    waitbar(1,f,'Retry in 1 sec')
 pause(1)
 close(f)
 n=n+1;
    Plotting
    
    
    else
        set(handles.edit12,'string',d);
        waitbar(.1,f,'Something went wrong, see dialog ')
    pause(1)
    waitbar(.1,f,'Failed 3 Times')
    pause(1)
    close(f)
    end
   
    %{
    set(handles.edit12,'string',d);
    cla(handles.axes1)
    set(handles.uitable1, 'Data', {})
    waitbar(.1,f,'Something went wrong')
    pause(1)
    waitbar(.1,f,'see dialog, Symbol has to be in your Watchlist')
    pause(3)
    %}
    
end




    


handles.d=d;
guidata(hObject, handles);
