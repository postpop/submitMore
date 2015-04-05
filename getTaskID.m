function tid = getTaskID()
tid = nan;
if isunix & ~ismac % rondo
   tid = str2double(getenv('SGE_TASK_ID'));
   disp(tid)
elseif (~isunix & ismac) | ispc % local
   t = getCurrentTask();
   if isempty(t)
      tid = 1;
   else
      tid = t.ID;
   end
end
