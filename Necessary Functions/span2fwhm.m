 function [ fwhm ] = span2fwhm( cf,span )
%SPAN2FWHM Summary of this function goes here
%   Detailed explanation goes here

fwhm = (2*sqrt(2*log(2))).*((cf./(2*pi))./span);
end
