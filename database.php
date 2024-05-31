<?php   
 //database.php  
 class Databases{  
      public $con;  
      public $con1;
      public $dbc;
      public function __construct()  
      {  
          $servername = "192.168.0.19";
          $username = "hakim";
          $password = "sap123ok";
          $db = "sapdash";
          #$db1 = "canvasjs_db";
          $db1 = "test";
          $port = "3306";
          
          $this->con = mysqli_connect($servername, $username, $password, $db, $port);
           if(!$this->con)  
           {  
                echo 'Database Connection Error ' . mysqli_connect_error($this->con);  
           }  

           $this->con1 = mysqli_connect($servername, $username, $password, $db1, $port);
           if(!$this->con1)  
           {  
                echo 'Database Connection Error ' . mysqli_connect_error($this->con1);  
           }  
      }  
      
      public function insert($table_name, $data)  
      {  
           $string = "INSERT INTO ".$table_name." (";            
           $string .= implode(",", array_keys($data)) . ') VALUES (';            
           $string .= "'" . implode("','", array_values($data)) . "')";  
           if(mysqli_query($this->con, $string))  
           {  
                return true;  
                mysqli_close($this->$con);
           }  
           else  
           {  
                echo mysqli_error($this->con);  
           }  
      }  

      public function mysql_array($sql){

          $data = mysqli_query($this->con, $sql);
          $dataPoints = array();
          while ($row = mysqli_fetch_array($data, MYSQL_ASSOC)) {
          array_push($dataPoints, $row);
          }
          return $dataPoints;

      }
      

      public function native_sql($q)
      {
          $result = mysqli_query($this->con1, $q);  
          
          return $result;
      }

      public function select($query)  
      {  
           $array = array();  
           $result = mysqli_query($this->con, $query);  
           while($row = mysqli_fetch_assoc($result))  
           {  
                $array[] = $row;  
           }  
           return $array; 
           mysqli_close($this->$con1); 
      }  
     
	public function delete($table_name){
          $query = "DELETE FROM ".$table_name."";
          $result = mysqli_query($this->con, $query);
          // if($result){
          //     echo "Data ".$table_name."deleted";
          // }
      }

     public function validate($data) {
          // Strip unnecessary characters for example extra space, tab, newline from the user input
          $data = trim($data);
          // Remove backslashes    
          $data = stripslashes($data);
          // Convert special characters to HTML entities, thus preventing attackers from exploiting the code
          $data = htmlspecialchars($data);
          // Return validated data
          return $data;
        }
        
     public function encodePass($text){
             $data = iconv("UTF-8","UTF-16LE",$text);
             return base64_encode($data);
        }
        
 }
 
 
 ?>  
