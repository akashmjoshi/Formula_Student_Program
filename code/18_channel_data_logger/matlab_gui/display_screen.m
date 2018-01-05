function varargout = display_screen(varargin)
% DISPLAY_SCREEN M-file for display_screen.fig
%      DISPLAY_SCREEN, by itself, creates a new DISPLAY_SCREEN or raises the existing
%      singleton*.
%
%      H = DISPLAY_SCREEN returns the handle to a new DISPLAY_SCREEN or the handle to
%      the existing singleton*.
%
%      DISPLAY_SCREEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISPLAY_SCREEN.M with the given input arguments.
%
%      DISPLAY_SCREEN('Property','Value',...) creates a new DISPLAY_SCREEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before display_screen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to display_screen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help display_screen

% Last Modified by GUIDE v2.5 06-Jul-2011 00:42:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @display_screen_OpeningFcn, ...
                   'gui_OutputFcn',  @display_screen_OutputFcn, ...
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


% --- Executes just before display_screen is made visible.
function display_screen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to display_screen (see VARARGIN)

% Choose default command line output for display_screen
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes display_screen wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global in_img6;
in_img6 = imread('orion.jpg'); % read the image
axes(handles.axes1);
subimage(in_img6);
axis off;
% title('Original Image');
set(handles.axes1, 'Visible', 'off');

% --- Outputs from this function are returned to the command line.
function varargout = display_screen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in singleplot.
function singleplot_Callback(hObject, eventdata, handles)
% hObject    handle to singleplot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close display_screen
 cd single_plot
 single_plot;

% --- Executes on button press in xyplot.
function xyplot_Callback(hObject, eventdata, handles)
% hObject    handle to xyplot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close display_screen
 cd multi_plot
 multi_plot;

% --- Executes on button press in exit1.
function exit1_Callback(hObject, eventdata, handles)
% hObject    handle to exit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.figure1)
