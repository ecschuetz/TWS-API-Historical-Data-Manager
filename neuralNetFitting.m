
Input=[];
Output=[];

%%% GETTING INPUT PARAMETERS
 if get(handles.Input2,'value')==1
        Input=[handles.d(:,2)];
    end
 if get(handles.Input3,'value')==1
        Input=[Input handles.d(:,3)];
 end
    if get(handles.Input4,'value')==1
        Input=[Input handles.d(:,4)];
    end
    if get(handles.Input5,'value')==1
        Input=[Input handles.d(:,5)];
    end
    if get(handles.Input6,'value')==1
        Input=[Input handles.d(:,6)];
    end
    if get(handles.Input7,'value')==1
        Input=[Input handles.d(:,7)];
    end
    if get(handles.Input8,'value')==1
        Input=[Input handles.d(:,8)];
    end
    
%%% GETTING OUTPUT PARAMETERS    
     if get(handles.Output2,'value')==1
        Output=[handles.d(:,2)];
    end
 if get(handles.Output3,'value')==1
        Output=[Output handles.d(:,3)];
 end
    if get(handles.Output4,'value')==1
        Output=[Output handles.d(:,4)];
    end
    if get(handles.Output5,'value')==1
        Output=[Output handles.d(:,5)];
    end
    if get(handles.Output6,'value')==1
        Output=[Output handles.d(:,6)];
    end
    if get(handles.Output7,'value')==1
        Output=[Output handles.d(:,7)];
    end
    if get(handles.Output8,'value')==1
        Output=[Output handles.d(:,8)];
    end
assignin('base','Input',Input)
assignin('base','Output',Output)
handles.Input=Input;
handles.Output=Output;
guidata(hObject, handles);
guidata(hObject, handles);
Nftool
genFunction(net,'NeuralNet')
set(handles.edit12,'string','Neuronal Net Built Successful');

