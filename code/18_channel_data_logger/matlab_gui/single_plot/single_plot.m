function varargout = single_plot(varargin)
% SINGLE_PLOT M-file for single_plot.fig
%      SINGLE_PLOT, by itself, creates a new SINGLE_PLOT or raises the existing
%      singleton*.
%
%      H = SINGLE_PLOT returns the handle to a new SINGLE_PLOT or the handle to
%      the existing singleton*.
%
%      SINGLE_PLOT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SINGLE_PLOT.M with the given input arguments.
%
%      SINGLE_PLOT('Property','Value',...) creates a new SINGLE_PLOT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before single_plot_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to single_plot_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help single_plot

% Last Modified by GUIDE v2.5 06-Jul-2011 01:04:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @single_plot_OpeningFcn, ...
                   'gui_OutputFcn',  @single_plot_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before single_plot is made visible.
function single_plot_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to single_plot (see VARARGIN)

% Choose default command line output for single_plot
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes single_plot wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = single_plot_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global lmt
switch get(handles.popupmenu1,'value')
  
        case 1
        axes(handles.axes1)
        x=0:1:lmt;
        global filename;
        a=csvread(filename,0,0,[0,0,lmt,0]);
        plot(x,a,'Color','red');
        grid(gca,'minor')
        hold on;
        
         case 2
        axes(handles.axes1)
        x=0:1:lmt;
        global filename;
        b=csvread(filename,0,1,[0,1,lmt,1]);
        plot(x,b,'Color','green');
        grid(gca,'minor')
        hold on;
        
         case 3
        axes(handles.axes1)
        global filename;
        x=0:1:lmt;
        c=csvread(filename,0,2,[0,2,lmt,2]);
        plot(x,c,'Color','blue');
        grid(gca,'minor')
        hold on;
        
         case 4
        axes(handles.axes1)
        x=0:1:lmt;
        global filename;
        d=csvread(filename,0,3,[0,3,lmt,3]);
        plot(x,d,'Color','black');
        grid(gca,'minor')
        hold on;
         case 5
        axes(handles.axes1)
        global filename;
        x=0:1:lmt;
        e=csvread(filename,0,4,[0,4,lmt,4]);
        plot(x,e,'Color','magenta');
        grid(gca,'minor')
        hold on;
            otherwise
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global lmt
switch get(handles.popupmenu2,'value')
  
        case 1
        axes(handles.axes2)
        x=0:1:lmt;
        global filename;
        a=csvread(filename,0,0,[0,0,lmt,0]);
        plot(x,a,'Color','red');
        grid(gca,'minor')
        hold on;
        
         case 2
        axes(handles.axes2)
        x=0:1:lmt;
        global filename;
        b=csvread(filename,0,1,[0,1,lmt,1]);
        plot(x,b,'Color','green');
        grid(gca,'minor')
        hold on;
        
         case 3
        axes(handles.axes2)
        global filename;
        x=0:1:lmt;
        c=csvread(filename,0,2,[0,2,lmt,2]);
        plot(x,c,'Color','blue');
        grid(gca,'minor')
        hold on;
        
         case 4
        axes(handles.axes2)
        x=0:1:lmt;
        global filename;
        d=csvread(filename,0,3,[0,3,lmt,3]);
        plot(x,d,'Color','cyan');
        grid(gca,'minor')
        hold on;
         case 5
        axes(handles.axes2)
        global filename;
        x=0:1:lmt;
        e=csvread(filename,0,4,[0,4,lmt,4]);
        plot(x,e,'Color','magenta');
        grid(gca,'minor')
        hold on;
            otherwise
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global lmt
switch get(handles.popupmenu3,'value')
  
        case 1
        axes(handles.axes3)
        x=0:1:lmt;
        global filename;
        a=csvread(filename,0,0,[0,0,lmt,0]);
        plot(x,a,'Color','red');
        grid(gca,'minor')
        hold on;
        
         case 2
        axes(handles.axes3)
        x=0:1:lmt;
        global filename;
        b=csvread(filename,0,1,[0,1,lmt,1]);
        plot(x,b,'Color','green');
        grid(gca,'minor')
        hold on;
        
         case 3
        axes(handles.axes3)
        global filename;
        x=0:1:lmt;
        c=csvread(filename,0,2,[0,2,lmt,2]);
        plot(x,c,'Color','blue');
        grid(gca,'minor')
        hold on;
        
         case 4
        axes(handles.axes3)
        x=0:1:lmt;
        global filename;
        d=csvread(filename,0,3,[0,3,lmt,3]);
        plot(x,d,'Color','cyan');
        grid(gca,'minor')
        hold on;
         case 5
        axes(handles.axes3)
        global filename;
        x=0:1:lmt;
        e=csvread(filename,0,4,[0,4,lmt,4]);
        plot(x,e,'Color','magenta');
        grid(gca,'minor')
        hold on;
            otherwise
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cursor1.
function cursor1_Callback(hObject, eventdata, handles)
% hObject    handle to cursor1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cu=get(handles.cursor1,'Value');
if (cu==1)
   datacursormode on;
else
   datacursormode off;
end

% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global lmt
switch get(handles.popupmenu4,'value')
  
        case 1
        axes(handles.axes4)
        x=0:1:lmt;
        global filename;
        a=csvread(filename,0,0,[0,0,lmt,0]);
        plot(x,a,'Color','red');
        grid(gca,'minor')
        hold on;
        
         case 2
        axes(handles.axes4)
        x=0:1:lmt;
        global filename;
        b=csvread(filename,0,1,[0,1,lmt,1]);
        plot(x,b,'Color','green');
        grid(gca,'minor')
        hold on;
        
         case 3
        axes(handles.axes4)
        global filename;
        x=0:1:lmt;
        c=csvread(filename,0,2,[0,2,lmt,2]);
        plot(x,c,'Color','blue');
        grid(gca,'minor')
        hold on;
        
         case 4
        axes(handles.axes4)
        x=0:1:lmt;
        global filename;
        d=csvread(filename,0,3,[0,3,lmt,3]);
        plot(x,d,'Color','cyan');
        grid(gca,'minor')
        hold on;
         case 5
        axes(handles.axes4)
        global filename;
        x=0:1:lmt;
        e=csvread(filename,0,4,[0,4,lmt,4]);
        plot(x,e,'Color','magenta');
        grid(gca,'minor')
        hold on;
            otherwise
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global lmt
switch get(handles.popupmenu5,'value')
  
        case 1
        axes(handles.axes5)
        x=0:1:lmt;
        global filename;
        a=csvread(filename,0,0,[0,0,lmt,0]);
        plot(x,a,'Color','red');
        grid(gca,'minor')
        hold on;
        
         case 2
        axes(handles.axes5)
        x=0:1:lmt;
        global filename;
        b=csvread(filename,0,1,[0,1,lmt,1]);
        plot(x,b,'Color','green');
        grid(gca,'minor')
        hold on;
        
         case 3
        axes(handles.axes5)
        global filename;
        x=0:1:lmt;
        c=csvread(filename,0,2,[0,2,lmt,2]);
        plot(x,c,'Color','blue');
        grid(gca,'minor')
        hold on;
        
         case 4
        axes(handles.axes5)
        x=0:1:lmt;
        global filename;
        d=csvread(filename,0,3,[0,3,lmt,3]);
        plot(x,d,'Color','cyan');
        grid(gca,'minor')
        hold on;
         case 5
        axes(handles.axes5)
        global filename;
        x=0:1:lmt;
        e=csvread(filename,0,4,[0,4,lmt,4]);
        plot(x,e,'Color','magenta');
        grid(gca,'minor')
        hold on;
            otherwise
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in zoom1.
function zoom1_Callback(hObject, eventdata, handles)
% hObject    handle to zoom1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
z=get(handles.zoom1,'Value');
if (z==1)
   zoom on;
else
   zoom off;
end

% --- Executes on button press in pan1.
function pan1_Callback(hObject, eventdata, handles)
% hObject    handle to pan1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p=get(handles.pan1,'Value');
if (p==1)
   pan on;
else
   pan off;
end

% --- Executes on button press in loadfile1.
function loadfile1_Callback(hObject, eventdata, handles)
% hObject    handle to loadfile1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cd G:\
[fn,pn] = uigetfile('*.csv','The file name should have CSV extension.');
copyfile([fn],'E:\matlab_gui\single_plot')
cd E:\
cd matlab_gui
cd single_plot
global filename;
filename=[fn];
 rc=csvread(filename);
 [m,n] = size(rc);
 global lmt;
 lmt=m-1;


% --- Executes on button press in clear1.
function clear1_Callback(hObject, eventdata, handles)
% hObject    handle to clear1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1,'reset');

% --- Executes on button press in clear4.
function clear4_Callback(hObject, eventdata, handles)
% hObject    handle to clear4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cla(handles.axes4,'reset');
% --- Executes on button press in clear5.
function clear5_Callback(hObject, eventdata, handles)
% hObject    handle to clear5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes5,'reset');

% --- Executes on button press in clear3.
function clear3_Callback(hObject, eventdata, handles)
% hObject    handle to clear3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes3,'reset');

% --- Executes on button press in clear2.
function clear2_Callback(hObject, eventdata, handles)
% hObject    handle to clear2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes2,'reset');


% --- Executes on button press in back1.
function back1_Callback(hObject, eventdata, handles)
% hObject    handle to back1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close single_plot
cd ..
display_screen
