function jobID =getJobID(string)
% get JOBID from 'submit' return string

% return string of the submit command is of the form
% 'SCRIPTNAME.m output will be in SCRIPTNAME.m.o4251723 ' for single jobs 
% 'SCRIPTNAME.m output will be in SCRIPTNAME.m.o4251723.1-10:1 ' for array jobs

% we first split at 'm.o' to get a string of the form 'JOBID ' or 'JOBID.1:10:1  
token = strsplit(string,'.m.o');
% then split at '.' to get a string of trailing job information (for job arrays)
token2 = strsplit(token{end},'.');
% finally, get rid of leading 'o' and remove any trailing whitespace (for single jobs)
jobID = strtrim(token2{2}(2:end));
