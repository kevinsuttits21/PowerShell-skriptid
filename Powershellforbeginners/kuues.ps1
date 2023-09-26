$result = @()
$csvPath = "C:\Users\Administrator\Downloads\Skriptid\Powershellforbeginners\failike.csv"
$csv = Import-Csv -Path $csvPath

# check if Senior or Junior student
function Get-SchoolCategory {
    param (
        [int]$Age
    )

    if ($Age -ge 4 -and $Age -le 10) {
        return "Junior"
    } elseif ($Age -ge 11 -and $Age -le 17) {
        return "Senior"
    } elseif ($Age -lt 4 -or $Age -gt 17) {
        return "Invalid Age"
    } else {
        return "Unknown"
    }
}

# an empty array
$results = @()

# process each student in the CSV file
foreach ($student in $csv) {
    $name = $student.Name
    $age = [int]$student.Age

    # determine the school category
    $schoolCategory = Get-SchoolCategory -Age $age
    # create a custom object with the student's name and school category
    $result = [PSCustomObject]@{
        Name = $name
        School = $schoolCategory
    }

    # add the result to the array
    $results += $result
}

# display the results in a table format
$results

# export the results to a new csv file
$csvcontent = $results | ConvertTo-Csv -NoTypeInformation

$csvcontent = $csvContent -replace '"', ''

# Export the results to a CSV file
$csvcontent | Out-File -FilePath "C:\Users\Administrator\Downloads\Skriptid\Powershellforbeginners\failike2.csv"