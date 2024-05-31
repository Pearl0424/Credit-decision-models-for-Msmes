/*********************************************
 * OPL 12.9.0.0 Model
 * Author: asus
 * Creation Date: 12 Sep 2020 at 22:45:47
 *********************************************/
int n=123;
float account[1..n]=[0,140069703.3,98375596.87,315328700.4,1229090.504,23973283.48,177821167,66742001.62,106749832.2,87226437.07,3311860.025,31999926.29,46843852.2,19442821.19,62050554.5,67189214.43,7389070.76,19739350.04,0,4162021.312,1768418.827,16207956.04,2483695.992,20991732.6,5467557.398,48365.74667,0,12129434.95,7798293.39,14371633.45,16033022.04,11448714.02,1200265.808,11393771.1,1495186.973,0,0,9853564.005,5424039.37,4749977.757,4208545.712,7738230.537,4218377.971,530027.77,268686.5653,1548248.738,1482042.83,13793538.86,2594082.255,3041747.07,2094482.773,0,530668.1933,9226092.11,2613263.465,8166.643333,1322470.483,4528404.072,3141728.033,588164.3813,4672377.659,2505411.875,4144643.733,2929935.993,788058.7387,0,1205056.68,992723.0333,559326.605,1183189.312,592647.928,436163.1233,1045272.607,887669.5333,650890.9183,897372.8507,633323.665,1048349.747,33706.09867,147034.82,542522.8767,0,0,1313869.683,535545.0613,92951.295,414093.12,584200.93,0,424125.3717,390092.6167,316930.0983,312206.4453,178074.9817,632420.3867,0,245060.3733,320615.4187,0,0,0,0,0,45041.66667,147261.9817,139444.4693,0,0,0,33606.25167,0,0,0,0,0,0,0,0,0,0,0,0,0];
int level_A[1..n]=[1,1,0,0,0,1,1,1,1,0,0,0,1,0,1,1,1,1,1,0,0,1,0,1,0,1,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
int level_B[1..n]=[0,0,0,0,1,0,0,0,0,1,0,1,0,0,0,0,0,0,0,1,1,0,1,0,0,0,0,1,0,1,0,1,1,1,1,0,1,1,0,0,0,0,1,0,1,0,0,0,0,0,1,0,0,0,0,0,1,1,0,1,1,1,1,0,1,1,1,0,0,1,1,0,0,1,0,1,0,0,1,0,0,0,1,0,1,0,0,0,0,0,0,0,1,0,1,0,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
int level_C[1..n]=[0,0,1,1,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,1,0,1,1,0,1,1,0,0,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,1,1,0,1,0,1,1,0,1,0,0,0,0,0,1,1,0,0,1,0,1,0,1,0,1,0,0,0,0,0,0,0,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0];
int level_D[1..n]=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1];

int d[1..n]=[1,1,1,1,1,1,1,1,1,-1,-1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,-1,1,1,1,1,1,1,-1,1,1,-1,1,1,1,1,1,1,-1,1,1,-1,1,1,-1,1,1,1,-1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,-1,1,1,1,1,1,1,-1,1,1,1,1,1,1,1,1,1,1,-1,1,1,-1,1,1,-1,-1,-1,-1,-1,1,1,1,-1,-1,-1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1];
float loss_rand[1..n]=[0.155705435,0.389965514,0.959959716,0.927426984,0.006012146,0.287545396,0.009430219,0.288460952,0.18530839,0.589403974,0.70393994,0.047242653,0.454176458,0.930112613,0.890316477,0.911801508,0.443159276,0.65498825,0.321909238,0.753318888,0.644337291,0.469862972,0.834986419,0.70229194,0.24897,0.553331095,0.136387219,0.410016175,0.487014374,0.1633961,0.108890042,0.758079775,0.624713889,0.269417402,0.040314951,0.795556505,0.276741844,0.240607929,0.682729575,0.186712241,0.189123203,0.122684408,0.547929319,0.949369793,0.148930326,0.533463546,0.34562212,0.765343181,0.17731254,0.708700827,0.970336009,0.644947661,0.661976989,0.730033265,0.943449202,0.225714896,0.585253456,0.465285195,0.716513565,0.48750267,0.504257332,0.253364666,0.74221015,0.164555803,0.439252907,0.864192633,0.718985565,0.636494034,0.326273385,0.765465255,0.916135136,0.578600421,0.190649129,0.227301859,0.984618671,0.153416547,0.697500534,0.29606006,0.161076693,0.024658956,0.235175634,0.168248543,0.270332957,0.974364452,0.188512833,0.996642964,0.432905057,0.405011139,0.557512131,0.658619953,0.884090701,0.507705924,0.578112125,0.51924192,0.810480056,0.37736137,0.500991852,0.719382305,0.610400708,0.856776635,0.185125278,0.02047792,0.484206671,0.390087588,0.661824396,0.737479781,0.761314737,0.667531358,0.325693533,0.790398877,0.869228187,0.342356639,0.908963286,0.406964324,0.352061525,0.601184118,0.895138401,0.506302072,0.843653676,0.869289224,0.528366955,0.295693838,0.402050844];
dvar float+ rate[1..n];
dvar float+ ra;
dvar float+ rb;
dvar float+ rc;
dvar float+ p_loss[1..n];
dvar boolean refuse[1..n];

maximize 
   sum (i in 1..n) account[i]*(1+(level_A[i]+level_B[i]+level_C[i])*rate[i]+level_D[i]*(-1))*d[i]*refuse[i];

subject to {

forall (i in 1..n) (level_A[i]==1)=>rate[i]==ra;
forall (i in 1..n) (level_B[i]==1)=>rate[i]==rb;
forall (i in 1..n) (level_C[i]==1)=>rate[i]==rc;

forall (i in 1..n) (level_A[i]==1)=>(p_loss[i]==7.52406404059649*rate[i]-0.0979300813722221);
forall (i in 1..n) (level_B[i]==1)=>(p_loss[i]==7.35107535431523*rate[i]-0.117765769021589);
forall (i in 1..n) (level_C[i]==1)=>(p_loss[i]==7.46841647701602*rate[i]-0.137910844288652);

forall (i in 1..n) (level_A[i]==1&&(loss_rand[i]<=p_loss[i]))=>refuse[i]==0;
forall (i in 1..n) (level_B[i]==1&&(loss_rand[i]<=p_loss[i]))=>refuse[i]==0;
forall (i in 1..n) (level_C[i]==1&&(loss_rand[i]<=p_loss[i]))=>refuse[i]==0;

ra>=0.04&&ra<=0.15;
rb>=0.04&&rb<=0.15;
rc>=0.04&&rc<=0.15;

ra<=rb;
rb<=rc;
}
 