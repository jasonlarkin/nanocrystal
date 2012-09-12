

x = load('C:\Documents and Settings\Jason\Desktop\ERDC\HPA\1\XDATCAR_matlab');

NUM_ATOMS = 76;

NUM_TSTEPS = length(x)/NUM_ATOMS;

for itime = 1:NUM_TSTEPS
    
    plot3(x(((itime-1)*NUM_ATOMS+1):((itime*NUM_ATOMS)),1),x(((itime-1)*NUM_ATOMS+1):((itime*NUM_ATOMS)),2),x(((itime-1)*NUM_ATOMS+1):((itime*NUM_ATOMS)),3),'.')
    pause
end