client = workspace.activeClient;
height = client.geometry.height;
workspace.slotWindowMaximizeVertical();
if(height > client.geometry.height) workspace.slotWindowMaximizeVertical();
geo = client.geometry;
halfDisplayWidth = workspace.displayWidth / 2;
if(geo.width < halfDisplayWidth) geo.width = halfDisplayWidth;
geo.x = halfDisplayWidth - geo.width / 2;
client.geometry = geo;
