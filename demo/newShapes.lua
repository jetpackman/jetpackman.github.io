-- A simple scene with some miscellaneous geometry.

blazeOrange = gr.material({0.9, 0.4, 0.0}, {0.5, 0.7, 0.5}, 25)
azureBlue = gr.material({0.2, 0.4, 0.6}, {0.5, 0.7, 0.5}, 25)
-- mat2 = gr.material({0.5, 0.5, 0.5}, {0.5, 0.7, 0.5}, 25)
-- mat3 = gr.material({1.0, 0.6, 0.1}, {0.5, 0.7, 0.5}, 25)
-- mat4 = gr.material({0.7, 0.6, 1.0}, {0.5, 0.4, 0.8}, 25)

scene_root = gr.node('root')

cylinder1 = gr.cylinder('cy1');
scene_root:add_child(cylinder1);
cylinder1:set_material(blazeOrange);
cylinder1:translate(-6.0, 6.0, 0.0);
cylinder1:scale(2.0, 4.0, 2.0);

cylinder2 = gr.cylinder('cy2');
scene_root:add_child(cylinder2);
cylinder2:set_material(blazeOrange);
cylinder2:translate(-6.0, 0.0, 0.0);
cylinder2:rotate('x', -95);
cylinder2:rotate('z', 45);
cylinder2:scale(2.0, 4.0, 2.0);

cylinder3 = gr.cylinder('cy3');
scene_root:add_child(cylinder3);
cylinder3:set_material(blazeOrange);
cylinder3:translate(-7.0, -9.0, 0.0);
cylinder3:rotate('x', -75);
-- cylinder3:rotate('z', -60);
cylinder3:scale(1.0, 9.0, 1.0);

cone2 = gr.cone('c2');
scene_root:add_child(cone2);
cone2:translate(9.0, 10.0, 0.0);
cone2:set_material(azureBlue);
cone2:rotate('x', 180);
cone2:rotate('y', -40);
cone2:scale(2.0, 2.0, 5.0);

cone1 = gr.cone('c1');
scene_root:add_child(cone1);
cone1:set_material(azureBlue);
cone1:translate(6.0, 2.5, 0.0);
cone1:rotate('x', 90);
cone1:scale(2.0, 2.0, 5.0);

cone3 = gr.cone('c3');
scene_root:add_child(cone3);
cone3:set_material(azureBlue);
cone3:translate(6.5, -5.0, 0.0);
cone3:rotate('y', -25);
cone3:rotate('x', 35);
cone3:scale(2.0, 2.0, 5.0);


white_light = gr.light({-100.0, 150.0, 400.0}, {0.9, 0.9, 0.9}, {1, 0, 0})
white_light2 = gr.light({0.0, 0.0, 5.0}, {0.7, 0.7, 0.7}, {1, 0, 0})

gr.render(scene_root, 'newShapes.png', 512, 512,
	  {0, 0, 30}, {0, 0, -1}, {0, 1, 0}, 50,
	  {0.3, 0.3, 0.3}, {white_light, white_light2})
