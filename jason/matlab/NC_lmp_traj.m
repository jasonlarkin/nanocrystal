
%Read in dump file which has atomic positions
[atom_data] = readdump_all('E:\CMU\work\nanoparticle\nanochain\3\nve_kappa_1_1.dump');

for i1=1:length(atom_data.timestep)
    %plot3(atom_data.atom_data(:,3,i1),atom_data.atom_data(:,4,i1),atom_data.atom_data(:,5,i1),'.')
    %pause
    xlo = atom_data.x_bound(i1,1); xhi = atom_data.x_bound(i1,2); Lx = (xhi-xlo);
    ylo = atom_data.y_bound(i1,1); yhi = atom_data.y_bound(i1,2); Ly = (yhi-ylo); 
    zlo = atom_data.z_bound(i1,1); zhi = atom_data.z_bound(i1,2); Lz = (zhi-zlo);
    %plot3(Lx*atom_data.atom_data(:,3,i1),Ly*atom_data.atom_data(:,4,i1),Lz*atom_data.atom_data(:,5,i1),'.')
    %axis([xlo xhi ylo yhi zlo zhi]);
    
    plot3(atom_data.atom_data(:,3,i1),atom_data.atom_data(:,4,i1),atom_data.atom_data(:,5,i1),'.')
    xlo = min(atom_data.atom_data(:,3,i1)); xhi = max(atom_data.atom_data(:,3,i1));
    ylo = min(atom_data.atom_data(:,4,i1)); yhi = max(atom_data.atom_data(:,4,i1));
    zlo = min(atom_data.atom_data(:,5,i1)); zhi = max(atom_data.atom_data(:,5,i1));
    axis([xlo xhi ylo yhi zlo zhi]);
    
    pause
end