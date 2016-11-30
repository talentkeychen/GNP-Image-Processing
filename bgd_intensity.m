close all;
% data processing of the background intensity
relative_bgd=zeros(size(abslt_bgd));
dim=size(abslt_bgd);
max_bgd=max(abslt_bgd);

%for x=1:dim(1,1)
 %   relative_bgd(x,1)=abslt_bgd(x,1)/max_bgd;
%end

relative_bgd(:,1)=abslt_bgd(:,1)/max_bgd;

% data visualization by ploting the relative intensity trajectories
t=time_atp;
figure,plot(t,relative_bgd,'k');
title('Normalized Intensity Trajectories of the background intensity');
xlabel('Time/s');
ylabel('Relative Intesnity (a.u.)');

% the absolute intensity trajectories
figure,plot(t,abslt_bgd,'r');
title('Absolute Intensity Trajectories of the background intensity');
xlabel('Time/s');
ylabel('Relative Intensity (a.u.)');

% the background absolute intensity histogram
figure,hist(abslt_bgd);
title('The Background Absolute Intensity Histogram');
h_bgd=findobj(gca,'Type','patch');
set(h_bgd,'FaceColor',[1 0 0],'EdgeColor','w');


