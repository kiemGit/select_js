<?php 
if ($_SERVER["REQUEST_METHOD"] == "POST") { 
    // Check if the dropdown value is set and not empty 
    if (isset($_POST['dropdown']) && !empty($_POST['dropdown'])) { 
        $selectedOption = $_POST['dropdown']; 
        echo "Selected option: " . $selectedOption; 
    }
    if (isset($_POST['emailAddress']) && !empty($_POST['emailAddress'])) { 
        $emailAddress = $_POST['emailAddress']; 
        echo "Email address: " . $emailAddress; 
    } else { 
        echo "Please select an option."; 
    } 
} 
?> 