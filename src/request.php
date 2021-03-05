<!DOCTYPE html>
<html>
<head>
	<title>Timetable Management System</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>

		<nav class="navbar navbar-default navbar-light bg-light shadow">
			<a href="https://jssateb.ac.in/"><img src="logo.png" class="img-fluid" width="50%"></a>
			<a class="navbar-brand ml-auto text-secondary" href="index.php"><h3>TIMETABLE MANAGEMENT SYSTEM</h3></a>
        </nav>

	<div class="container pt-5">

			<?php
//Converting initials to caps and little bit of string formatting
if (isset($_POST["initials"]))
{
    $initials = strtoupper($_POST["initials"]);

    //In database Doctor is present as Dr
    if (strpos($initials, "DR") !== false)
    {
        $str_arr = explode('.', $initials);
        $str_arr[0] = "Dr";
        $initials = implode(".", $str_arr);
    }
}

//Converts date to day
if (isset($_POST["date"]))
{
    $date = strtotime($_POST["date"]);
    $day = date("l", $date);
}

//Need to enter database name, username and password
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'rajivranjansingh'; //Fill this
$DATABASE_PASS = '0000'; //Fill this
$DATABASE_NAME = 'dbms'; //Fill this
$db_connection = pg_connect("host='$DATABASE_HOST' port='5432' dbname='$DATABASE_NAME' user='$DATABASE_USER' password='$DATABASE_PASS'") or die("unable to connect to database");

function print_timetable($result)
{
    if (pg_num_rows($result) > 0)
    {
        echo '<table class="table table-hover table-responsive table-striped">
								<thead>
									<tr>';

        $i = 0;

        while ($i < pg_num_fields($result))
        {
            $fieldName = pg_field_name($result, $i);
            echo '<th style="text-align:center">' . strtoupper($fieldName) . '</th>';
            $i = $i + 1;
        }
        echo '</tr></thead><tbody>';

        $i = 0;

        while ($row = pg_fetch_row($result))
        {
            echo '<tr>';
            $count = count($row);
            $y = 0;
            while ($y < $count)
            {
                $c_row = current($row);
                echo '<td style="text-align:center">' . $c_row . '</td>';
                next($row);
                $y = $y + 1;
            }
            echo '</tr>';
            $i = $i + 1;
        }

        pg_free_result($result);

        echo '</tbody></table>';
    }
    else
    {
        echo "<h2 class='jumbotron text-center'>No classes</h2>";
    }
}

if (isset($_POST["timetable"]))
{
    echo "<h1 class='pt-5'>" . $initials . "'s Timetable for the Week</h1>";
    $query = "SELECT sem as SEM, section as SECTION, room_no as ROOM_NO, pno as PERIOD,day as DAY, start_time as START_TIME, end_time as END_TIME FROM assign_to WHERE initials = '$initials'";
    $result = pg_query($query);
    print_timetable($result);
}
elseif (isset($_POST["free_slots"]))
{
    echo "<h1 class='pt-5'>" . $initials . "'s Free Slots</h1>";
    $query = "SELECT * from timetable where (pno,day) NOT IN (SELECT pno, day FROM assign_to WHERE initials='$initials');";
    $result = pg_query($query);
    print_timetable($result);
}
elseif (isset($_POST["time_date"]))
{
    echo "<h1 class='pt-5'>" . $initials . "'s Timetable</h1>";
    $query = "SELECT sem as SEM, section as SECTION, room_no as ROOM_NO, pno as PERIOD, start_time as START_TIME, end_time as END_TIME FROM assign_to WHERE initials = '$initials' AND assign_to.day = '$day'";
    $result = pg_query($query);
    print_timetable($result);
}
elseif (isset($_POST['class_vacancy']))
{
    $start_times = array(
        '08:15',
        '09:15',
        '10:45',
        '11:45',
        '13:30',
        '14:30'
    );
    $end_times = array(
        '09:15',
        '10:15',
        '11:45',
        '12:45',
        '14:30',
        '15:30'
    );

    $start_time = $start_times[((int)$_POST["gridRadios"]) - 1];
    $end_time = $end_times[((int)$_POST["gridRadios"]) - 1];

    $query = "SELECT room_no FROM sem_class WHERE room_no NOT IN (SELECT room_no FROM assign_to WHERE start_time='$start_time' AND end_time='$end_time' AND day='$day');";

    $result = pg_query($query);

    if (pg_num_rows($result) > 0)
    {
        echo '<h1 class="pt-5">Classes Free</h1>';

        echo '<table class="table table-hover table-responsive table-striped">
								<thead>
								<tr>
								<th>Classes</th></tr></thead>';
        while ($row = pg_fetch_row($result))
        {
            echo '<tr><td>' . $row[0] . '</td></tr>';
        }
        echo '</table>';
    }
    else
    {
        echo '<h1 class="jumbotron text-center">No classes free</h1>';
    }
}
elseif (isset($_POST['find_lecturer']))
{
    $start_times = array(
        '08:15',
        '09:15',
        '10:45',
        '11:45',
        '13:30',
        '14:30'
    );
    $end_times = array(
        '09:15',
        '10:15',
        '11:45',
        '12:45',
        '14:30',
        '15:30'
    );

    $start_time = $start_times[((int)$_POST["gridRadios"]) - 1];
    $end_time = $end_times[((int)$_POST["gridRadios"]) - 1];

    $query = "SELECT room_no, sem, section FROM assign_to WHERE initials='$initials' AND start_time='$start_time' AND end_time='$end_time' AND day='$day';";
    $result = pg_query($query);

    if (pg_num_rows($result) > 0)
    {
        while ($row = pg_fetch_row($result))
        {
            echo "<h2 class='alert alert-info'>$initials is currently taking a class for semester " . $row[1] . " section " . $row[2] . " in room <strong>" . $row[0] . "</strong>.</h2>";
        }
    }
    else
    {
        echo '<h2 class="alert alert-info text-center">The lecturer doesn\'t have any class right now!</h2>';
    }
}

echo '<br />';

pg_close($db_connection);

?>

		<a href="index.php"><button class="btn btn-primary">Go Back</button></a>

		<footer class="footer">
		<p><center>
		Copyright &COPY; ISE @JSSATEB. All Rights Reserved
		<br />
		Made with <i class="fa fa-heart" style="color:red"></i> in India
		</center></p>
		</footer>

	</div>
</body>
</html>
