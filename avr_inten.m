function [i_average  ] = avr_inten( channel_intensity )
%i_average returns the average value of the relative intensity value per 60
%minutes binning time.
%   Just a simple calculation, no statistical inference......
tmp=size(channel_intensity);
n=tmp(1,1);
frame_bin=1000;
bin=n/frame_bin;
i_average=zeros(bin,2);
sum=zeros(bin);
for a=1:bin
    for b=(1+frame_bin*(a-1)):frame_bin*a
       sum(a)=sum(a)+channel_intensity(b);
    end
i_average(a,2)=sum(a)/frame_bin;
i_average(a,1)=a;
end

end

