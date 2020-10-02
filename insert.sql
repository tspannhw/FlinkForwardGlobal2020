INSERT INTO global_sensor_events 
SELECT 	scada.uuid, scada.systemtime, scada.temperaturef, scada.pressure, scada.humidity,scada.lux,scada.proximity, scada.oxidising, scada.reducing, scada.nh3,scada.gasko,scada.amplitude100, 
  scada.amplitude500, scada.amplitude1000, scada.lownoise, scada.midnoise, scada.highnoise, scada.amps, scada.cpu, scada.memory, scada.ipaddress, scada.host, scada.host_name, scada.macaddress, scada.endtime, scada.runtime, scada.starttime, scada.cpu_temp, 
  scada.diskusage, scada.id, scada.temperature,scada.adjtemp, scada.adjtempf, energy.`current`, energy.voltage ,energy.`power`,energy.`total`,energy.fanstatus,
  energy.swver, energy.hwver, energy.deviceId, energy.hwId, energy.fwId, energy.oemId, energy.`alias`, energy.devname, energy.iconhash, energy.`feature`, energy.activemode, energy.relaystate, energy.updating, energy.rssi, energy.ledoff, energy.latitude, energy.longitude, 
  energy.ontime, energy.`day`, energy.`index`, energy.`zonestr`, energy.tzstr, energy.dstoffset, energy.host, energy.currentconsumption, energy.devicetime, energy.ledon, energy.`end`, energy.`te`, energy.cpu 
FROM energy FULL JOIN scada ON energy.systemtime = scada.systemtime
