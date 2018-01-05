function varargout = multi_plot(varargin)
% MULTI_PLOT M-file for multi_plot.fig
%      MULTI_PLOT, by itself, creates a new MULTI_PLOT or raises the existing
%      singleton*.
%
%      H = MULTI_PLOT returns the handle to a new MULTI_PLOT or the handle to
%      the existing singleton*.
%
%      MULTI_PLOT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MULTI_PLOT.M with the given input arguments.
%
%      MULTI_PLOT('Property','Value',...) creates a new MULTI_PLOT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before multi_plot_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to multi_plot_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help multi_plot

% Last Modified by GUIDE v2.5 18-Jul-2011 18:55:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @multi_plot_OpeningFcn, ...
                   'gui_OutputFcn',  @multi_plot_OutputFcn, ...
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


% --- Executes just before multi_plot is made visible.
function multi_plot_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to multi_plot (see VARARGIN)

% Choose default command line output for multi_plot
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes multi_plot wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = multi_plot_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


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

% --- Executes on button press in plotxy.


% --- Executes on button press in clearplot.
function clearplot_Callback(hObject, eventdata, handles)
% hObject    handle to clearplot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cla(handles.axes1,'reset');
% --- Executes on button press in loadfile1.
function loadfile1_Callback(hObject, eventdata, handles)
% hObject    handle to loadfile1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cd G:\
[fn,pn] = uigetfile('*.csv','The file name should have CSV extension.');
copyfile([fn],'E:\matlab_gui\multi_plot')
cd E:\
cd matlab_gui
cd multi_plot
global filename;
filename=[fn];
 rc=csvread(filename);
 [m,n] = size(rc);
 global lmt;
 lmt=m-1;

% --- Executes on selection change in popupmenu1x.
function popupmenu1x_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x
global lmt

switch get(handles.popupmenu1x,'value')
   
        case 1
     
        global filename;
        x=csvread(filename,0,0,[0,0,lmt,0]);
       
        
         case 2
      
        global filename;
        x=csvread(filename,0,1,[0,1,lmt,1]);
      
        
         case 3
      
        global filename;
        x=csvread(filename,0,2,[0,2,lmt,2]);
       
        
        case 4
      
        global filename;
        x=csvread(filename,0,3,[0,3,lmt,3]);
       
         case 5
       
        global filename;
        
        x=csvread(filename,0,4,[0,4,lmt,4]);
        
            otherwise
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1x contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1x


% --- Executes during object creation, after setting all properties.
function popupmenu1x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2y.
function popupmenu2y_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y
global lmt
switch get(handles.popupmenu2y,'value')
    
        case 1
     
        global filename;
        y=csvread(filename,0,0,[0,0,lmt,0]);
       
        
         case 2
      
        global filename;
        y=csvread(filename,0,1,[0,1,lmt,1]);
      
        
         case 3
      
        global filename;
        y=csvread(filename,0,2,[0,2,lmt,2]);
       
        
        case 4
      
        global filename;
        y=csvread(filename,0,3,[0,3,lmt,3]);
       
         case 5
       
        global filename;
        
        y=csvread(filename,0,4,[0,4,lmt,4]);
        
            otherwise
end
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2y contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2y


% --- Executes during object creation, after setting all properties.
function popupmenu2y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function plotxy_Callback(hObject, eventdata, handles)
% hObject    handle to plotxy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global y;
axes(handles.axes1)
plot(x,y,'.')
%grid on
grid(gca,'minor')


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close multi_plot
cd ..
display_screen