function varargout = test2(varargin)
% TEST MATLAB code for Test.fig
%      TEST, by itself, creates a new TEST or raises the existing
%      singleton*.
%
%      H = TEST returns the handle to a new TEST or the handle to
%      the existing singleton*.
%
%      TEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST.M with the given input arguments.
%
%      TEST('Property','Value',...) creates a new TEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Test_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Test_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Test

% Last Modified by GUIDE v2.5 03-Dec-2016 22:26:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Test_OpeningFcn, ...
                   'gui_OutputFcn',  @Test_OutputFcn, ...
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


% --- Executes just before Test is made visible.
function Test_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Test (see VARARGIN)

% Choose default command line output for Test
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Test wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Test_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function alfa_Callback(hObject, eventdata, handles)
% hObject    handle to alfa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alfa as text
%        str2double(get(hObject,'String')) returns contents of alfa as a double


% --- Executes during object creation, after setting all properties.
function alfa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alfa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h_Callback(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h as text
%        str2double(get(hObject,'String')) returns contents of h as a double


% --- Executes during object creation, after setting all properties.
function h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fct_Callback(hObject, eventdata, handles)
% hObject    handle to fct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fct as text
%        str2double(get(hObject,'String')) returns contents of fct as a double


% --- Executes during object creation, after setting all properties.
function fct_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in maillage.
function maillage_Callback(hObject, eventdata, handles)
% hObject    handle to maillage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla;
p=handles.G;
a=str2num(get(handles.a,'string'));
b=str2num(get(handles.b,'string'));
h2=get(handles.h,'string');
h=str2num(h2);
if (p==1)

        n = floor((b - a)/h) + 1 % Nombre des noeuds
        X = a + h*(0:n-1)';       % Vecteur des noeuds
      
    [~, I] = sort(X)
    T = [ I(1:n-1), I(2:n)];

%Partie affichage
    
    plot(X, zeros(1,n), 'b-o'); 
   
    set(gca,'xcolor','w');
    set(gca,'ycolor','w');
    
    for i = 1:size(T,1)
        text(X(T(i,1)) + 2*(X(T(i,2))-X(T(i,1)))/5, -0.1, sprintf('T_{%d}', i), 'color', 'red');
    end
end

if (p==2) 
     n = floor((b - a)/h) + 1
        X1 = a + h*(0:n-1)';
        X = zeros(2*n-1,1);
        for j=0:(n-1)
            X(2*(n-1)-2*j+1) = X1(n-j);
            if j ~= (n-1)
            X(2*(n-1)-2*j) = X1(n-j)-0.5*h;
            end
        end
      
    [~, I] = sort(X);
    T = [ I(1:2:(2*n-3)), I(2:2:2*(n-1)), I(3:2:(2*n-1))];
    plot(X, zeros(1,2*n-1), 'b-o');
    set(gca,'xcolor','w');
    set(gca,'ycolor','w');
    
    
    
    for i = 1:size(T,1)
        text(X1(T(i,1)-i+1) + 2*(X1(T(i,2)-i+1)-X1(T(i,1)-i+1))/5, -0.1, sprintf('T_{%d}', i), 'color', 'red');
    end
  
end


    
% --- Executes on button press in solution.
function solution_Callback(hObject, eventdata, handles)
% hObject handle to solution (see GCBO)
% eventdata reserved - to be defined in a future version of MATLAB
% handles structure with handles and user data (see GUIDATA)
cla;


alpha=str2num(get(handles.alfa,'string'));
beta=str2num(get(handles.beta,'string'));
%%%
f1=['@(x)',get(handles.fct,'string')];
f=str2num(f1);
%%%
a=str2num(get(handles.a,'string'));
b=str2num(get(handles.b,'string'));
h=str2num(get(handles.h,'string'));
%%%
p=handles.G

if (p==1)
       
[X,T]=Maillage(a,b,h);
[U] = EF_P1(alpha,beta,f,a,b,h);
 plot(X,U, 'r.-');
 set(gca,'xcolor','w');
 set(gca,'ycolor','w');
 U(1)=0;
set(handles.table,'Data', U);
handles.X1=X;
handles.U1=U;
end

if (p==2)

   [X,T]=Maillage2(a,b,h);
   [U] = EF_P2(alpha,beta,f,a,b,h);
     plot(X,U, 'r.-');
 set(gca,'xcolor','w');
 set(gca,'ycolor','w');
 U(1)=0;
set(handles.table,'Data', U);
handles.X2=X;
handles.U2=U;
end


guidata(hObject,handles);

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla;

clear;
clc;
set(findobj(0,'style','edit'),'string','') 
set(findobj(0,'tag','val'),'data',0);



% --- Executes when entered data in editable cell(s) in table.
function table_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to table (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on key press with focus on figure1 and none of its controls.



function beta_Callback(hObject, eventdata, handles)
% hObject    handle to beta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of beta as text
%        str2double(get(hObject,'String')) returns contents of beta as a double


% --- Executes during object creation, after setting all properties.
function beta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double


% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double


% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end






% --- Executes during object creation, after setting all properties.
function panel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function ue_Callback(hObject, eventdata, handles)
% hObject    handle to ue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ue as text
%        str2double(get(hObject,'String')) returns contents of ue as a double


% --- Executes during object creation, after setting all properties.
function ue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Erreur.
function Erreur_Callback(hObject, eventdata, handles)
% hObject    handle to Erreur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cla;

h =str2num(get(handles.h,'string'));
alpha=str2num(get(handles.alfa,'string'));
a=str2num(get(handles.a,'string'));
b=str2num(get(handles.b,'string'));
beta=str2num(get(handles.beta,'string'));
ue1=['@(x)',get(handles.ue,'string')];
ue=str2num(ue1);

p=handles.G

if (p==1)
X=handles.X1;
U=handles.U1;
erreur=zeros(size(X,1),1);
for i=1:size(X,1)
erreur(i)=U(i)-ue(a+h*(i-1));
end
plot(X,erreur, 'r-o');
 set(gca,'xcolor','w');
 set(gca,'ycolor','w');
end

if (p==2)
X=handles.X2;
U=handles.U2;
erreur=zeros(size(X,1),1);
for i=1:size(X,1)
erreur(i)=U(i)-ue(a+h*(i-1));
end
plot(X,erreur, 'r-o');
 set(gca,'xcolor','w');
 set(gca,'ycolor','w'); 
end


% --- Executes on button press in comp.
function comp_Callback(hObject, eventdata, handles)
% hObject    handle to comp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cla;
ue1=['@(x)',get(handles.ue,'string')];
ue=str2num(ue1);

a=str2num(get(handles.a,'string'));
b=str2num(get(handles.b,'string'));
h=str2num(get(handles.h,'string'));

p=handles.G;
 
if (p==1)
[X,T]=Maillage(a,b,h);

U=handles.U1;
fplot(ue, [min(X), max(X)], 'b'); hold on; plot(X,U, 'r.-');
legend('La solution exacte','Elements finis de degre 1')
end

if (p==2)
    
[X,T]=Maillage2(a,b,h);
U=handles.U2;
fplot(ue, [min(X), max(X)], 'b'); hold on; plot(X,U, 'r.-');
legend('La solution exacte','Element finis de degre 2')

end


% --- Executes on selection change in p.
function p_Callback(hObject, eventdata, handles)
% hObject    handle to p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns p contents as cell array
%        contents{get(hObject,'Value')} returns selected item from p
G=get(hObject,'value');
handles.G=G;

guidata(hObject, handles)

% --- Executes during object creation, after setting all properties.
function p_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to ue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ue as text
%        str2double(get(hObject,'String')) returns contents of ue as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in comp2.
function comp2_Callback(hObject, eventdata, handles)
% hObject    handle to comp2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla;
ue1=['@(x)',get(handles.ue,'string')];
ue=str2num(ue1);
alpha=str2num(get(handles.alfa,'string'));

beta=str2num(get(handles.beta,'string'));

a=str2num(get(handles.a,'string'));
b=str2num(get(handles.b,'string'));
h=str2num(get(handles.h,'string'));

f1=['@(x)',get(handles.fct,'string')];
f=str2num(f1);

[X1,T1]=Maillage(a,b,h);
[X2,T2]=Maillage2(a,b,h);

 [U1] = EF_P1(alpha,beta,f,a,b,h);
 [U2] = EF_P2(alpha,beta,f,a,b,h);
fplot(ue, [min(X2), max(X2)], 'b'); hold on; plot(X1,U1, 'r.-'); plot(X2,U2, 'y.-');
legend('La solution exacte','Element finis de degre 1','Element finis de degre 2')




