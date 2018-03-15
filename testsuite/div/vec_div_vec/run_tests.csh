rm *.tif *.oso

# vec / vec (including Masking)
oslc test_u_vec_div_u_vec.osl
testshade -t 1 -g 64 64 -od uint8 -o Cout sout_u_vec_div_u_vec.tif test_u_vec_div_u_vec
testshade -t 1 --batched -g 64 64 -od uint8 -o Cout bout_u_vec_div_u_vec.tif test_u_vec_div_u_vec
idiff sout_u_vec_div_u_vec.tif bout_u_vec_div_u_vec.tif

oslc test_u_vec_div_v_vec.osl
testshade -t 1 -g 64 64 -od uint8 -o Cout sout_v_vec_div_v_vec.tif test_u_vec_div_v_vec
testshade -t 1 --batched -g 64 64 -od uint8 -o Cout bout_v_vec_div_v_vec.tif test_u_vec_div_v_vec
idiff sout_v_vec_div_v_vec.tif bout_v_vec_div_v_vec.tif

oslc test_v_vec_div_v_vec.osl
testshade -t 1 -g 64 64 -od uint8 -o Cout sout_v_vec_div_v_vec.tif test_v_vec_div_v_vec
testshade -t 1 --batched -g 64 64 -od uint8 -o Cout bout_v_vec_div_v_vec.tif test_v_vec_div_v_vec
idiff sout_v_vec_div_v_vec.tif bout_v_vec_div_v_vec.tif

oslc test_v_vec_div_u_vec.osl
testshade -t 1 -g 64 64 -od uint8 -o Cout sout_v_vec_div_u_vec.tif test_v_vec_div_u_vec
testshade -t 1 --batched -g 64 64 -od uint8 -o Cout bout_v_vec_div_u_vec.tif test_v_vec_div_u_vec
idiff sout_v_vec_div_u_vec.tif bout_v_vec_div_u_vec.tif

oslc test_v_vec_div_v_vec.osl
testshade --vary_udxdy --vary_udxdy -t 1 -g 64 64 -od uint8 -o Cout sout_v_vec_div_v_vec.tif test_v_vec_div_v_vec
testshade --vary_udxdy --vary_udxdy -t 1 --batched -g 64 64 -od uint8 -o Cout bout_v_vec_div_v_vec.tif test_v_vec_div_v_vec
idiff sout_v_vec_div_v_vec.tif bout_v_vec_div_v_vec.tif


