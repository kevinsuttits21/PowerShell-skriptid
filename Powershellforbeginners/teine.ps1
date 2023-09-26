# tables
$tabel1=@{Name="John","Joe","Mary";DaysWorked=12,20,18}
$tabel2=@{Name="John","Joe","Mary";SalaryPerDay=100,120,150}

# calculate the salary
$Johnsalary = $tabel1.DaysWorked[0] * $tabel2.SalaryPerDay[0] 
$Joesalary = $tabel1.Daysworked[1] * $tabel2.SalaryPerDay[1]
$Marysalary = $tabel1.Daysworked[2] * $tabel2.SalaryPerDay[2]

# new list
$tabel3=@{Name="John","Joe","Mary"; Salary=$Johnsalary,$Joesalary,$Marysalary}

$tabel3 # print out the output