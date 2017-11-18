   


fun = @(x) p(1)*x+p(2);
figure(5)
fplot(fun,[0 1000]);
hold on;
plot(x_dist_1,y_dist_1,'r*');
hold on;
plot(x_dist_2,y_dist_2,'r*');

fun_up = @(x) p(1)*x+p(2)+threshold;
fun_down = @(x) p(1)*x+p(2)-threshold;
fplot(fun_up,[0 1000],'r--');
fplot(fun_down,[0 1000],'r--');


