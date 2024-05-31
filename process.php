<?php 

include 'database.php';  
    date_default_timezone_set("Asia/Jakarta");
    $data = new Databases; 
    $tableName = "location";

if ($_SERVER["REQUEST_METHOD"] == "POST") { 
    // Check if the dropdown value is set and not empty 
    if (isset($_POST['dropdown']) && !empty($_POST['dropdown'])) { 
        $selectedOption = $_POST['dropdown']; 
        echo "Selected option: " . $selectedOption; 
    }
    if (isset($_POST['locId']) && !empty($_POST['locId'])) { 
        $locId = $_POST['locId']; 
        echo "Location Id: " . $locId; 
    }
    if (isset($_POST['locName']) && !empty($_POST['locName'])) { 
        $locName = $_POST['locName']; 
        echo "Location Name: " . $locName; 
    } else { 
        echo "Please select an option."; 
    } 

    $dataArray = array (
        'locParentId' => $selectedOption,
        'locId' => $locId,
        'Name' => $locName,
    );

    $data->insert($tableName,$dataArray);
} 
?> 