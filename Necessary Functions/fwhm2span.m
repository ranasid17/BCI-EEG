function [ span ] = fwhm2span( cf,fwhm )
%FWHM2SPAN Summary of this function goes here
%   Detailed explanation goes here

span= (cf./(2*pi))./(fwhm./ (2*sqrt(2*log(2))));


end

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       