-- A simple scene with some miscellaneous geometry.

blazeOrange = gr.material({0.9, 0.4, 0.0}, {0.5, 0.7, 0.5}, 25)
azureBlue = gr.material({0.2, 0.4, 0.6}, {0.5, 0.7, 0.5}, 25)
backgroundColour = gr.material({0, 0.4, 0.4}, {0, 0, 0}, 1)

scene_root = gr.node('root')
onlySphere = gr.node('so');
scene_root:add_child(onlySphere)
onlySphere:translate(-5.0, 0.0, 0.0);
onlySphere:rotate('y', 35);

back = gr.sphere('background');
scene_root:add_child(back);
back:translate(0,0, -100);
back:scale(1000, 1000, 1.0);
back:set_material(backgroundColour);

s1 = gr.sphere('s1')
s1:set_material(blazeOrange)

s2 = gr.sphere('s2')
s2:set_material(azureBlue)
s2:translate(0.5, 0.0, 0.5);

csg_node2 = gr.csg('csg2');
csg_node2:setCSGType('u');
onlySphere:add_child(csg_node2)
csg_node2:add_child(s1)
csg_node2:add_child(s2)
csg_node2:translate(0.0, 6.0, 0.0);

csg3 = gr.csg('csg3');
csg3:setCSGType('i');
onlySphere:add_child(csg3)
csg3:add_child(s1)
csg3:add_child(s2)
csg3:translate(0.0, 2.0, 0.0);

csg_node1 = gr.csg('csg');
csg_node1:setCSGType('d');
onlySphere:add_child(csg_node1)
csg_node1:translate(0.0, -2.0, 0.0);
csg_node1:add_child(s1)
csg_node1:add_child(s2)

csg_node4 = gr.csg('csg');
csg_node4:setCSGType('d');
onlySphere:add_child(csg_node4)
csg_node4:translate(0.0, -6.0, 0.0);
csg_node4:add_child(s2)
csg_node4:add_child(s1)

sphereBox = gr.node('so');
scene_root:add_child(sphereBox);
sphereBox:rotate('y', 10);

b2 = gr.cube('s2')
b2:set_material(azureBlue)
b2:translate(0.5, 0.0, 0.0);

csg_node2b = gr.csg('csg2');
csg_node2b:setCSGType('u');
sphereBox:add_child(csg_node2b)
csg_node2b:add_child(s1)
csg_node2b:add_child(b2)
csg_node2b:translate(0.0, 6.0, 0.0);

csg3b = gr.csg('csg3');
csg3b:setCSGType('i');
sphereBox:add_child(csg3b)
csg3b:add_child(s1)
csg3b:add_child(b2)
csg3b:translate(0.0, 2.0, 0.0);

csg_node1b = gr.csg('csg');
csg_node1b:setCSGType('d');
sphereBox:add_child(csg_node1b)
csg_node1b:translate(0.0, -2.0, 0.0);
csg_node1b:add_child(s1)
csg_node1b:add_child(b2)

csg_node4b = gr.csg('csg');
csg_node4b:setCSGType('d');
sphereBox:add_child(csg_node4b)
csg_node4b:translate(0.0, -6.0, 0.0);
csg_node4b:add_child(b2)
csg_node4b:add_child(s1)

cone3 = gr.cylinder('cone');
cone3:translate(0.5, -1.5, 0.0);
cone3:scale(1.0, 3.0, 1.0);
cone3:set_material(blazeOrange);

coneBox = gr.node('cb');
scene_root:add_child(coneBox);
coneBox:translate(5.0, 0.0, 0.0);

csg_node2bc = gr.csg('csg2');
csg_node2bc:setCSGType('u');
coneBox:add_child(csg_node2bc)
csg_node2bc:add_child(b2)
csg_node2bc:add_child(cone3)
csg_node2bc:translate(0.0, 6.0, 0.0);
csg_node2bc:rotate('x', -45);

csg3bc = gr.csg('csg3');
csg3bc:setCSGType('i');
coneBox:add_child(csg3bc)
csg3bc:add_child(b2)
csg3bc:add_child(cone3)
csg3bc:translate(0.0, 2.0, 0.0);
csg3bc:rotate('x', -45);

csg_node1bc = gr.csg('csg');
csg_node1bc:setCSGType('d');
coneBox:add_child(csg_node1bc)
csg_node1bc:translate(0.0, -2.0, 0.0);
csg_node1bc:add_child(b2)
csg_node1bc:add_child(cone3)
csg_node1bc:rotate('x', -45);


csg_node4bc = gr.csg('csg');
csg_node4bc:setCSGType('d');
coneBox:add_child(csg_node4bc)
csg_node4bc:translate(0.0, -6.0, 0.0);
csg_node4bc:add_child(cone3)
csg_node4bc:add_child(b2)
csg_node4bc:rotate('x', -45);


coneBox:rotate('y', -45);


white_light = gr.light({0, -2, 20}, {0.9, 0.9, 0.9}, {1, 0, 0})
-- orange_light = gr.light({400.0, 100.0, 150.0}, {0.7, 0.0, 0.7}, {1, 0, 0})

gr.render(scene_root, 'csg.png', 512, 512,
	  {0, 0, 17}, {0, 0, -1}, {0, 1, 0}, 50,
	  {0.3, 0.3, 0.3}, {white_light})
