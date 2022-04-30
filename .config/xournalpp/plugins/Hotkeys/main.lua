-- Register all Toolbar actions and intialize all UI stuff
function initUi()
  app.registerUi({["menu"] = "Pen", ["callback"] = "selectPen", ["accelerator"] = "<CTRL>i"});
  app.registerUi({["menu"] = "Eraser", ["callback"] = "selectEraser", ["accelerator"] = "<CTRL>k"});
  app.registerUi({["menu"] = "Highlighter", ["callback"] = "selectHighlighter", ["accelerator"] = "<CTRL>t"});
  app.registerUi({["menu"] = "Rectangle Selection", ["callback"] = "selectSelectionRect", ["accelerator"] = "<CTRL>m"});
  app.registerUi({["menu"] = "Increase Tool Size", ["callback"] = "toolSizeInc", ["accelerator"] = "<CTRL>0"});
  app.registerUi({["menu"] = "Decrease Tool Size", ["callback"] = "toolSizeDec", ["accelerator"] = "<CTRL>9"});
  app.uiAction({["action"]="ACTION_SIZE_MEDIUM"})
end

-- tool size from 1-5 (very fine to very thick)
local toolsize = {
  [1] = "ACTION_SIZE_VERY_FINE",
  [2] = "ACTION_SIZE_FINE",
  [3] = "ACTION_SIZE_MEDIUM",
  [4] = "ACTION_SIZE_THICK",
  [5] = "ACTION_SIZE_VERY_THICK",
}
local currSize = 3


-- Choose pen tool
function selectPen()
  app.uiAction({["action"]="ACTION_TOOL_PEN"})
end

-- Choose eraser tool
function selectEraser()
  app.uiAction({["action"]="ACTION_TOOL_ERASER"})
end

-- Choose eraser tool
function selectHighlighter()
  app.uiAction({["action"]="ACTION_TOOL_HIGHLIGHTER"})
end

-- Choose the Selection Tool 
function selectSelectionRect()
  app.uiAction({["action"]="ACTION_TOOL_SELECT_RECT"})
end

-- Increase tool size
function toolSizeInc()
  if(currSize < 5) then
    currSize = currSize+1
    app.uiAction({["action"]=toolsize[currSize]})
  end
end

-- Decrease tool size
function toolSizeDec()
  if(currSize > 1) then
    currSize = currSize-1
    app.uiAction({["action"]=toolsize[currSize]})
  end
end
