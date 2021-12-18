# Godot debug draw example
from https://kidscancode.org/godot_recipes/ui/debug_overlay/

## HOW TO USE
Add debug.gd to your project as Singelton via autoload(needs further code adjustment), or just use it as a script. Add the script to a Control node, rename Control node "debugNode".


Add debug information:

$debugNode = name of the node/singelton that contains debug Script.

This function adds a new debug Vector
"function add_vector(object, property, scale, width, color)"

use it like this:
``` 
$debugNode.add_vector(self, "velocity", 1, 4, Color(0,1,0, 0.5)) 
```

`! You only need to add the Vector one time, once it's added it will update values by itself. `