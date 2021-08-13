function disp_pendcart_abhinandan(t,x,l)
pos= x(:,1);
theta = x(:,3);

% dim of cart
w = 5;
h = 1;

r = 0.25;
R = 0.5;  % wheel radius

% position of pendulum ball
px = pos + l*sin(theta);
py = h - l*cos(theta);

figure()
plot([-20,20],[0,0],'k','LineWidth',2);
hold on

h1 = rectangle('Position', [pos(1)-w/2,R, w,h], 'Curvature',0.1,'FaceColor',...
    [1,1,0], 'EdgeColor', [1,1,1]);
h2 = plot([pos(1), px(1)],[h, py(1)], 'k', 'LineWidth', 1);
h3 = rectangle('Position', [px(1)-r py(1)-r 2*r 2*r], 'Curvature',[1,1],'FaceColor',...
    [0,1,1], 'EdgeColor', [1,1,1]);
%wheels
h4 = rectangle('Position', [pos(1)-w/3-2*R 0 2*R 2*R], 'Curvature',[1,1],'FaceColor',...
    [0.5,0,0], 'EdgeColor', [1,1,1]);
h5 = rectangle('Position', [pos(1)+w/3+2*R 0 2*R 2*R], 'Curvature',[1,1],'FaceColor',...
    [0.5,0,0], 'EdgeColor', [1,1,1]);

xlim([-20,5]);
ylim([-10,10]);

set(gca,'Color', 'w', 'XColor', 'k', 'YColor', 'k');
set(gcf,'Color', 'w');

Button = uicontrol('Style', 'PushButton', 'String', 'End', 'CallBack', 'delete(gcbf)');

for k = 1:length(t)
    set(h1, 'Position', [pos(k)-w/2,R,w,h]);
    set(h2, 'XData', [pos(k) px(k)], 'YData', [h, py(k)]);
    set(h3, 'Position', [px(k)-r py(k)-r 2*r 2*r]);
    set(h4, 'Position', [pos(k)-w/3-R,0,2*R,2*R]);
    set(h5, 'Position', [pos(k)+w/3-R,0,2*R,2*R]);

    drawnow();
    if ~ishandle(Button)
        break;
    end
end
end
