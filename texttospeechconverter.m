% Program to do text to speech.

% Get user's sentence

userPrompt = 'What do you want the computer to say?';

%this code lets you holds the text you want the program to read

titleBar = 'Text to Speech';


defaultString = 'THIS PROGRAM IS USED TO CHANGE TEXT TO SPEECH FOR THE VISUALLY IMPAIRED';

caUserInput = inputdlg(userPrompt, titleBar, 1, {defaultString});

if isempty(caUserInput)
    
  return;
  
end 
% Bail out if they clicked Cancel.

caUserInput = char(caUserInput); 
% Convert from cell to string.

NET.addAssembly('System.Speech');

obj = System.Speech.Synthesis.SpeechSynthesizer;

obj.Volume = 100;
% this line adjustes the volume of the speaker

obj.Rate=1;
% this line of code controles the speed of the text to be spoken 
% the normal rate we recommend is 1

Speak(obj, caUserInput);
