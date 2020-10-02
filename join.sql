select scada.*, energy.* from energy, scada where energy.systemtime = scada.systemtime;

SELECT 
	scada.uuid, 
	scada.systemtime ,  
scada.temperaturef , 
scada.pressure , 
scada.humidity , 
scada.lux , 
scada.proximity , 
scada.oxidising , 
scada.reducing , 
scada.nh3 , 
scada.gasko,
amplitude100: 
 |-- amplitude500: 
 |-- amplitude1000: 
 |-- lownoise: 
 |-- midnoise: 
 |-- highnoise: 
 |-- amps: 
 |-- cpu: 
 |-- memory: 
 |-- ipaddress: 
 |-- host: 
 |-- host_name: 
 |-- macaddress: 
 |-- endtime: 
 |-- runtime: 
 |-- starttime: 
 |-- cpu_temp: 
 |-- diskusage, 
 |-- id: STRING
 |-- temperature,
 |-- adjtemp: ,
 |-- adjtempf: ,
energy.`current`, 
energy.voltage ,
energy.`power` ,
energy.`total`,
energy.fanstatus
FROM energy FULL JOIN scada ON energy.systemtime = scada.systemtime;
 

|-- current: INT
 |-- voltage: INT
 |-- power: INT
 |-- total: INT
 |-- fanstatus: STRING
 |-- diskusage: STRING
 |-- memory: INT
 |-- swver: STRING
 |-- hwver: STRING
 |-- type: STRING
 |-- model: STRING
 |-- mac: STRING
 |-- deviceId: STRING
 |-- hwId: STRING
 |-- fwId: STRING
 |-- oemId: STRING
 |-- alias: STRING
 |-- devname: STRING
 |-- iconhash: STRING
 |-- feature: STRING
 |-- activemode: STRING
 |-- relaystate: INT
 |-- updating: INT
 |-- rssi: INT
 |-- ledoff: INT
 |-- latitude: INT
 |-- longitude: INT
 |-- ontime: INT
 |-- day: INT
 |-- index: INT
 |-- zonestr: STRING
 |-- tzstr: STRING
 |-- dstoffset: INT
 |-- host: STRING
 |-- currentconsumption: INT
 |-- devicetime: STRING
 |-- ledon: STRING
 |-- end: STRING
 |-- te: STRING
 |-- cpu: INT
 
 
 
SELECT 	scada.uuid, scada.systemtime, scada.temperaturef, scada.pressure, scada.humidity,scada.lux,scada.proximity, scada.oxidising, scada.reducing, scada.nh3,scada.gasko,scada.amplitude100, 
  scada.amplitude500, scada.amplitude1000, scada.lownoise, scada.midnoise, scada.highnoise, scada.amps, scada.cpu, scada.memory, scada.ipaddress, scada.host, scada.host_name, scada.macaddress, scada.endtime, scada.runtime, scada.starttime, scada.cpu_temp, 
  scada.diskusage, scada.id, scada.temperature,scada.adjtemp, scada.adjtempf, energy.`current`, energy.voltage ,energy.`power`,energy.`total`,energy.fanstatus,
  energy.swver, energy.hwver, energy.deviceId, energy.hwId, energy.fwId, energy.oemId, energy.`alias`, energy.devname, energy.iconhash, energy.`feature`, energy.activemode, energy.relaystate, energy.updating, energy.rssi, energy.ledoff, energy.latitude, energy.longitude, 
  energy.ontime, energy.`day`, energy.`index`, energy.`zonestr`, energy.tzstr, energy.dstoffset, energy.host, energy.currentconsumption, energy.devicetime, energy.ledon, energy.`end`, energy.`te`, energy.cpu 
FROM energy FULL JOIN scada ON energy.systemtime = scada.systemtime
