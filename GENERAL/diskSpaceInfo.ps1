# This script focuses on acquiring disk space info:

Get-WmiObject Win32_Logicaldisk|
Select PSComputername,DeviceID, FileSystem, VolumeName, 
@{Name="Size(GB)";Expression={$_.Size/1GB -as [int]}},
@{Name="Free(GB)";Expression={[math]::Round($_.Freespace/1GB,2)}}


Get-WmiObject Win32_LogicalDisk -Filter DriveType=3 | 
Select-Object DeviceID, 
@{'Name'='Size (GB)'; 'Expression'={[math]::truncate($_.size / 1GB)}}, 
@{'Name'='Freespace (GB)'; 'Expression'={[math]::truncate($_.freespace / 1GB)}}


Get-WmiObject Win32_Logicaldisk|
Select PSComputername,DeviceID,
@{Name="SizeGB";Expression={$_.Size/1GB -as [int]}},
@{Name="FreeGB";Expression={[math]::Round($_.Freespace/1GB,2)}}


Get-Wmiobject Win32_LogicalDisk | 
Select Name,FileSystem,VolumeName,
@{n="Size / GB";e={[math]::truncate($_.freespace / 1GB)}}
