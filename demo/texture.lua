-- A simple scene with some miscellaneous geometry.

-- mat1 = gr.material({0.7, 1.0, 0.7}, {0.5, 0.7, 0.5}, 25)
-- -- mat2 = gr.material({0.5, 0.5, 0.5}, {0.5, 0.7, 0.5}, 25)
-- -- mat3 = gr.material({1.0, 0.6, 0.1}, {0.5, 0.7, 0.5}, 25)
-- -- mat4 = gr.material({0.7, 0.6, 1.0}, {0.5, 0.4, 0.8}, 25)
bricks = gr.texture("bricks.png", {0.0, 0.0, 0.0}, 1.0 );
smile = gr.texture("check.png" , {0.0, 0.0, 0.0}, 1.0)
-- gr.load_bumpmap(mat1, "seamless.png");

scene_root = gr.node('root')

row1 = gr.node ('row1')
scene_root:add_child(row1)

s1 = gr.sphere('s1')
row1:add_child(s1)
s1:set_material(bricks);
s1:translate(0.0, 6.0, 0.0);

s2 = gr.cube('s1')
row1:add_child(s2)
s2:set_material(bricks);
s2:translate(-1, 1.0, 0.0);
s2:scale(2.0, 2.0, 2.0);

s3 = gr.cylinder('s1')
row1:add_child(s3)
s3:set_material(bricks);
s3:translate(0.0, -3.0, 0.0);

s4 = gr.cone('s1')
row1:add_child(s4)
s4:set_material(bricks);
s4:translate(0.0, -6.0, 0.0);
s4:rotate('x', 180);


row2 = gr.node ('row1')
scene_root:add_child(row2)

s11 = gr.sphere('s11')
row2:add_child(s11)
s11:set_material(smile);
s11:translate(0.0, 6.0, 0.0);

s22 = gr.cube('s11')
row2:add_child(s22)
s22:set_material(smile);
s22:translate(-1, 1.0, 0.0);
s22:scale(2.0, 2.0, 2.0);

s33 = gr.cylinder('s11')
row2:add_child(s33)
s33:set_material(smile);
s33:translate(0.0, -3.0, 0.0);

s44 = gr.cone('s11')
row2:add_child(s44)
s44:set_material(smile);
s44:translate(0.0, -5.0, 0.0);
s44:rotate('x', 90);

row1:translate(-4.0, 0.0, 0.0)
row2:translate(4.0, 0.0, 0.0)




white_light = gr.light({-150, 150, 400.0}, {0.9, 0.9, 0.9}, {1, 0, 0})
-- orange_light = gr.light({400.0, 100.0, 150.0}, {0.7, 0.0, 0.7}, {1, 0, 0})

gr.render(scene_root, 'texture.png', 512, 512,
	  {0, 0, 17}, {0, 0, -1}, {0, 1, 0}, 50,
	  {0.3, 0.3, 0.3}, {white_light})
