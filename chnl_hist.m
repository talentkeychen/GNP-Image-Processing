% histogram of the RGB channel intensity
figure,hist(RED_CHNNEL);
title('Red Channel');
h_R=findobj(gca,'Type','patch');
set(h_R,'FaceColor',[1 0 0],'EdgeColor','w');
figure,hist(GREEN_CHNNEL);
title('Green Channel');
h_G=findobj(gca,'Type','patch');
set(h_G,'FaceColor',[0 1 0],'EdgeColor','w');
figure,hist(BLUE_CHNNEL);
h_B=findobj(gca,'Type','patch');
set(h_B,'FaceColor',[0 0 1],'EdgeColor','w');
title('Blue Channel');