declare default element namespace "http://openbox.org/3.4/rc";
declare option saxon:output "method=text";

for $keybind in doc("rc.xml")/openbox_config/keyboard/keybind
 return concat("key: ", 
                $keybind/@key/data(.), 
                "&#09;&#09;name: ", 
                string-join($keybind/action/@name/data(.), ","),
                " ",
                $keybind/action/desktop/text(),
                " ",
                $keybind/action/command/text(),
                $keybind/action/execute/text(),
                "&#x0A;")