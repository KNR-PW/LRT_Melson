function [ humanoid ] = convert2humanoid( kinect )
% Transformacja wektor�w z kinecta do poprawnych z Wojtyrologi�
    for i=1: length(kinect)
       humanoid(:,i) = [-kinect(i,3); -kinect(i,1); kinect(i,2)]; 
    end
end

