Program lesson2_Program3;
Var PD, Dname, Cmodel : String;
    TotalKM, CostPD, TCostPD, Distance : Real;
    {real is a decimal (described later)}
Begin
	TCostPD := 0; { note that this is called an 'initialisation'.
			It is important to initialise integer variables to
			0 so that they are 'cleaned' from previous 'trash' 
			values in memory. }
	Writeln('This program prompts you to ' +
		+ 'input the cost per litre of');
	Writeln('the petrol/diesel you spend ' +
		+ 'in and the average distance you travel');
	Writeln('with your car every week. Then ' +
		+ 'the computer calculates the total cost');
	Writeln('you spend in fuel every week.');
	Readln;
	Write('Diesel or Petrol?: ');
	Readln(PD);
	Write('Name Of Driver: ');
	Readln(Dname);
	Write('Car Model: ');
	Readln(Cmodel);
	Write('Cost of Diesel/Petrol: (£) ');
	Readln(CostPD);
	Writeln('Average distance you travel ' +
		+ 'with your car every week: (kilometres) ');
	Readln(Distance);
	Writeln;
	Writeln;
	Writeln('Name of Driver:',Dname);
	Writeln('Car Model:',Cmodel);
	Writeln('Diesel/Petrol:',PD);
	Writeln('Average distance covered '+
		+'every week: ',Distance:1:2,'Km');
	Writeln('Cost of ',PD,' per liter: £',CostPD:1:2,'/litre');
	Writeln;
	Writeln;
	TCostPD := Distance * CostPD;
	Writeln('Total cost of ',PD,' per week:' +
		+ '£',TCostPD:1:2); {note this,}
	TCostPD := 0;
	Writeln('Total cost of ',PD,' per week:'+
		+ '£',(Distance * CostPD):1:2); {this}
	Writeln('Total cost of ',PD,' per week:'+
		+ '£',Distance * CostPD); {and this - without ':1:2'}
	Readln;
End.