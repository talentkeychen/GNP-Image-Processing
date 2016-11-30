close all;
% relative intensity trajectories of MsbA with Ni-Au dimer in ATP analogue
% assay
RED_CHNNEL=red_channel';
GREEN_CHNNEL=green_channel';
BLUE_CHNNEL=blue_channel';
t=time';
figure,plot(t, RED_CHNNEL,'r');
title('The Relative Channel Intensity Time Trajactories of ATP Analogue Assay');
xlabel('Time(s)');
ylabel('Relative Intesnity (a.u.)');
hold all;
plot(t, GREEN_CHNNEL,'g');
hold all;
plot(t, BLUE_CHNNEL,'b');
leg1=legend('Red Channel', 'Green Channel', 'Blue Channel','Location','NorthEastOutside');
set(leg1,'FontAngle','italic','TextColor',[.3,.2,.1]);

% calculate the average relative intensity within each binning time
red_avr=avr_inten(red_channel);
green_avr=avr_inten(green_channel);
blue_avr=avr_inten(blue_channel);

