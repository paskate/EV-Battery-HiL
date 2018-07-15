function [ ] = packet_write( I, Qr0, Qr1, Qr2, Qr3, Qr4, Qr5, Qr6, Qr7, ...
                             Qr8, Qr9, Qr10, Qr11, T, T1, Vc0, Vc1, Vc2, ...
                             Vc3, Vc4, Vc5, ...
                             Vc6, Vc7, Vc8, Vc9, Vc10, Vc11, Rinit, R0init, ...
                             Cinit, soc0, soc1, soc2, soc3, soc4, soc5,...
                             soc6, soc7, soc8, soc9, soc10, soc11, ...
                             dec_per, Ifilt, Vfilt0, Vfilt1, Vfilt2, Vfilt3, ...
                             Vfilt4,  Vfilt5, Vfilt6, Vfilt7, Vfilt8, ...
                             Vfilt9, Vfilt10, Vfilt11, M)
%PACKET_SEND: Create and write new packet of data into Memory Mapped
%Interface.

packet = [I,  Qr0, Qr1, Qr2, Qr3, Qr4, Qr5, Qr6, Qr7, Qr8, Qr9, Qr10, ...
          Qr11, T, T1, Vc0, Vc1, Vc2, Vc3, Vc4, Vc5, Vc6, Vc7, Vc8, ...
          Vc9, Vc10, Vc11, Rinit, R0init, Cinit, soc0, soc1, soc2, soc3,...
          soc4, soc5, soc6, soc7, soc8, soc9, soc10, soc11];

M.write('single', 4, packet);
M.write('uint32', 544, dec_per);

packet = [Ifilt, Vfilt0, Vfilt1, Vfilt2, Vfilt3, Vfilt4,  Vfilt5, Vfilt6, ...
          Vfilt7, Vfilt8, Vfilt9, Vfilt10, Vfilt11];
      
M.write('single', 596, packet);
end

