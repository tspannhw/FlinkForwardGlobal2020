select scada.*, energy.* from energy, scada where energy.systemtime = scada.systemtime;
