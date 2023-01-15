function rot = Euler_Angles(phi, theta, psi)
    yaw = [cosd(psi), -sind(psi), 0; sind(psi), cosd(psi), 0; 0, 0, 1];
    pitch = [cosd(theta), 0, sind(theta); 0, 1, 0; -sind(theta), 0, cosd(theta)];
    roll = [1, 0, 0; 0, cosd(phi), -sind(phi); 0, sind(phi), cosd(phi)];
    rot = yaw * pitch * roll;
end