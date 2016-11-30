close all;
red_avr=avr_inten(red_channel);
green_avr=avr_inten(green_channel);
blue_avr=avr_inten(blue_channel);
%atp_concentration=[0.4
                   %2.0
                   %10.0];
atp_concentration=[0.1
                   0.2 
                   1.0
                   2.0
                   5.0 
                   10.0];

figure,plot(atp_concentration,red_avr(:,2),'--rs','LineWidth',1.5,'MarkerSize',5);
title('ATP-dependent Relative Intensity Trajactories per 60s binning time');
xlabel('[ATP]/mM');
ylabel('Average Relative Intesnity (a.u.)');
hold all;
plot(atp_concentration, green_avr(:,2),'--gs','LineWidth',1.5,'MarkerSize',5);
hold all;
plot(atp_concentration, blue_avr(:,2),'--bs','LineWidth',1.5,'MarkerSize',5);
leg1=legend('Red Channel', 'Green Channel', 'Blue Channel','Location','NorthEastOutside');
set(leg1,'FontAngle','italic','TextColor',[.3,.2,.1]);

