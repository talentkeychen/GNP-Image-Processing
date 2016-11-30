% close all;
% relative intensity trajectories of MsbA with Ni-Au dimer
RED_CHNNEL=red_channel';
GREEN_CHNNEL=green_channel';
BLUE_CHNNEL=blue_channel';
%t=time';
num_frm=6000;
freq_frm=16.3;
time_atp=zeros(num_frm,1);
for x=1:num_frm
    time_atp(x,1)=x/freq_frm;
end

t=time_atp';
figure,plot(t, RED_CHNNEL,'r');
title('The Relative Channel Intensity Time Trajactories');
xlabel('Time(s)');
ylabel('Relative Intesnity (a.u.)');
hold all;
plot(t, GREEN_CHNNEL,'g');
hold all;
plot(t, BLUE_CHNNEL,'b');
leg1=legend('Red Channel', 'Green Channel', 'Blue Channel','Location','NorthEastOutside');
set(leg1,'FontAngle','italic','TextColor',[.3,.2,.1]);

% signal versus noise ratio trajactories(signal includes the background)
%bg_noise=background';
%I_R=intensity_R';
%I_G=intensity_G';
%I_B=intensity_B';
%ratio_R=zeros(size(I_R));
%ratio_G=zeros(size(I_G));
%ratio_B=zeros(size(I_B));
%for i=1:max(size(ratio_R))
 %   ratio_R(1,i)=I_R(1,i)/bg_noise(1,i);
  %  ratio_G(1,i)=I_G(1,i)/bg_noise(1,i);
   % ratio_B(1,i)=I_B(1,i)/bg_noise(1,i);
%end
%figure
%plot(t,ratio_R,'r');
%hold all;
%plot(t,ratio_G,'g');
%hold all;
%plot(t,ratio_B,'b');
%title('Signal versus Background Noise Ratio Trajactories');
%xlabel('time/s');
%ylabel('Ratio');
%leg1=legend('Red Channel', 'Green Channel', 'Blue Channel','Location','NorthEastOutside');
%set(leg1,'FontAngle','italic','TextColor',[.3,.2,.1]);

%true signal trajactories(signal-background)
%true_sigR=zeros(size(background'));
%true_sigG=zeros(size(background'));
%true_sigB=zeros(size(background'));
%true_sigR=I_R-bg_noise;
%true_sigG=I_G-bg_noise;
%true_sigB=I_B-bg_noise;
%figure
%plot(t,true_sigR,'r');
%hold all
%plot(t,true_sigG,'g');
%hold all
%plot(t,true_sigB,'b');
%title('Real Signal Intensity Trajactories');
%xlabel('Time(s)');
%ylabel('Absolute Intensity(a.u.)');
%leg1=legend('Red Channel', 'Green Channel', 'Blue Channel','Location','NorthEastOutside');
%set(leg1,'FontAngle','italic','TextColor',[.3,.2,.1]);

% histogram of the RGB channel intensity
%figure,hist(RED_CHNNEL);
%title('Red Channel');
%h_R=findobj(gca,'Type','patch');
%set(h_R,'FaceColor',[1 0 0],'EdgeColor','w');
%figure,hist(GREEN_CHNNEL);
%title('Green Channel');
%h_G=findobj(gca,'Type','patch');
%set(h_G,'FaceColor',[0 1 0],'EdgeColor','w');
%figure,hist(BLUE_CHNNEL);
%h_B=findobj(gca,'Type','patch');
%set(h_B,'FaceColor',[0 0 1],'EdgeColor','w');
%title('Blue Channel');

% average binning of the relative intensity trajactories
red_avr=avr_inten(red_channel);
green_avr=avr_inten(green_channel);
blue_avr=avr_inten(blue_channel);

