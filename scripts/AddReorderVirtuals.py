import json
import re

input_file = open("../bindings/2.200/GeometryDash-extras.bro", "r")

output_file = open("../bindings/2.200/GeometryDash-extras-reordered.bro", "w")

virtuals_json = open("virtuals.json", "r")

virtuals = json.load(virtuals_json)

# iterate for every class
class_match = None
class_name = None
virtuals_list = []
last_comment = None
pure_replaces = {
    'GJBaseGameLayer': 'PlayLayer',
    'TableViewDelegate': 'BoomListView',
    'TableViewDataSource': 'BoomListView',
}
for line in input_file:
    line = line.replace("    ", "\t")
    add_line = True

    # find class
    class_match = re.match(r"^\s*class\s*(\w+)", line)
    # if class_name == "FLAlertLayerProtocol":
    #     break
    if class_match:
        class_name = class_match.group(1)
        if class_name in pure_replaces:
            class_name = pure_replaces[class_name]
        if class_name in virtuals:
            class_virtuals = virtuals[class_name]
            if len(class_virtuals) == 0:
                class_functions = []
            else:
                class_functions = [func for func in class_virtuals[0] if "~" not in func]
            virtuals_list = []
        else:
            class_name = None
        # print("class: " + class_name)
        # print(class_functions)
    elif class_name is not None:
        # find matching functions
        for function in class_functions:
            # if 'std::' in function:
            #     function = function[0:function.find('(')]
            if ' ' + function in line:
                # print("found function: " + line)
                add_line = False
                if last_comment is not None:
                    virtuals_list.append(last_comment)
                    last_comment = None
                virtuals_list.append(line)

        if '/*' in line:
            last_comment = line
            add_line = False

    # write 
    if (('\t\t' not in line and ';' in line and '(' not in line) or '}\n' == line) and len(virtuals_list) > 0:
        # sort virtuals_list based on the class_functions
        sorted_list = []
        for function in class_functions:
            for virtual in virtuals_list:
                if ' ' + function in virtual:
                    sorted_list.append(virtual)
                    break

        for virtual in sorted_list:
            if '/*' in virtual:
                output_file.write(virtual)
                continue
            
            if 'virtual' not in virtual:
                virtual = virtual.replace("\t// ", "\t// virtual ")
                if 'virtual' not in virtual:
                    virtual = virtual.replace("\t", "\tvirtual ")
            output_file.write(virtual)
        output_file.write('    \n')
        virtuals_list = []

    if add_line:
        if last_comment is not None:
            output_file.write(last_comment)
            last_comment = None
        output_file.write(line)