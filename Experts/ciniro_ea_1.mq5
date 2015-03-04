#property version     "3.70"      // Versão corrente do Expert Advisor
#property description "Ciniro"

input int valor=9;

void OnInit()
{

   double TimeAsSeries[];

   ArraySetAsSeries(TimeAsSeries,true);
   ResetLastError();
   int copied=CopyOpen("TOTS3",PERIOD_D1,TimeCurrent() - 100,100,TimeAsSeries);
   if(copied<=0)
     {
      Print("The copy operation of the open time values for last 10 bars has failed");
     }
   
   Print("TimeCurrent =",TimeCurrent());
   Print("ArraySize(Time) =",ArraySize(TimeAsSeries));
   
   int size=ArraySize(TimeAsSeries);
   for(int i=0;i<size;i++)
     {
      Print("TimeAsSeries["+i+"] =",TimeAsSeries[i]);
     }
     
     EventSetTimer(1);
}

void OnTimer()
{
   printf(valor);
}
