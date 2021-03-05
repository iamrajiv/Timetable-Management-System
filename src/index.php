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
			<a class="navbar-brand ml-auto text-secondary pull-left" href="index.php"><h3>TIMETABLE MANAGEMENT SYSTEM</h3></a>
        </nav>

		<div class="container pt-5">

			<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

				<li class="nav-item">
			    	<a class="nav-link active" id="pills-par-timetable-tab" data-toggle="pill" href="#pills-par-timetable" role="tab" aria-controls="pills-home" aria-selected="true">Particular Timetable</a>
			  	</li>

				<li class="nav-item">
			    	<a class="nav-link" id="pills-fulltime-tab" data-toggle="pill" href="#pills-fulltime" role="tab" aria-controls="pills-fulltime" aria-selected="false">Full Timetable</a>
			  	</li>

				<li class="nav-item">
			    	<a class="nav-link" id="pills-freeslots-tab" data-toggle="pill" href="#pills-freeslots" role="tab" aria-controls="pills-freeslots" aria-selected="false">Free Slots</a>
			  	</li>

				<li class="nav-item">
			    	<a class="nav-link" id="pills-vacancy-tab" data-toggle="pill" href="#pills-vacancy" role="tab" aria-controls="pills-vacancy" aria-selected="false">Class Vacancy</a>
			  	</li>

				<li class="nav-item">
			    	<a class="nav-link" id="pills-findlec-tab" data-toggle="pill" href="#pills-findlec" role="tab" aria-controls="pills-findlec" aria-selected="false">Find Lecturer</a>
			  	</li>

			</ul>
			<div class="tab-content" id="pills-tabContent">

				<div class="tab-pane fade show active" id="pills-par-timetable" role="tabpanel" aria-labelledby="pills-par-timetable-tab">
			  		<form action="request.php" method="POST">

						<div class="form-group">
							<label for="initials"><strong>Faculty Initials:</strong></label>
							<input type="text" class="form-control" name="initials" placeholder="Enter Initials" required>
						</div>

						<div class="form-group">
							<label for="date"><strong>Date:</strong></label>
							<input type="date" class="form-control" name="date" id="date" placeholder="Select the Date" required>
						</div>

						<button type="submit" class="btn btn-primary" name="time_date">Get Info</button>

					</form>

				</div>

				<div class="tab-pane fade" id="pills-fulltime" role="tabpanel" aria-labelledby="pills-fulltime-tab">
					<form action="request.php" method="POST">

						<div class="form-group">
							<label for="initials"><strong>Faculty Initials:</strong></label>
							<input type="text" class="form-control" name="initials" placeholder="Enter Initials" required>
						</div>

						<button type="submit" class="btn btn-primary" name="timetable">Get Info</button>

					</form>
			  	</div>

				<div class="tab-pane fade" id="pills-freeslots" role="tabpanel" aria-labelledby="pills-freeslots-tab">

					<form action="request.php" method="POST">

						<div class="form-group">
							<label for="initials"><strong>Faculty Initials:</strong></label>
							<input type="text" class="form-control" name="initials" placeholder="Enter Initials" required>
						</div>

						<button type="submit" class="btn btn-primary" name="free_slots">Get Info</button>

					</form>

			  	</div>

				<div class="tab-pane fade" id="pills-vacancy" role="tabpanel" aria-labelledby="pills-vacancy-tab">

					<form action="request.php" method="POST">

						<fieldset class="form-group">
    						<div class="row">
    						  	<legend class="col-form-label col-sm-2 pt-0"><strong>Periods:</strong></legend>
    							<div class="col-sm-10">
    								<div class="form-check">
    								  <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="1" checked>
    								  <label class="form-check-label" for="gridRadios1">
    								    08:15 - 09:15
    								  </label>
    								</div>
    								<div class="form-check">
    								  <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="2">
    								  <label class="form-check-label" for="gridRadios2">
    								    09:15 - 10:15
    								  </label>
    								</div>
    								<div class="form-check">
    								  <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="3">
    								  <label class="form-check-label" for="gridRadios3">
    								    10:45 - 11:45
    								  </label>
    								</div>
									<div class="form-check">
    								  <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios4" value="4">
    								  <label class="form-check-label" for="gridRadios4">
    								    11:45 - 12:45
    								  </label>
    								</div>
									<div class="form-check">
    								  <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios5" value="5">
    								  <label class="form-check-label" for="gridRadios5">
    								    13:30 - 14:30
    								  </label>
    								</div>
									<div class="form-check">
    								  <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios6" value="6">
    								  <label class="form-check-label" for="gridRadios6">
    								    14:30 - 15:30
    								  </label>
    								</div>
    							</div>
    						</div>
  						</fieldset>

						<div class="form-group">
							<label for="date"><strong>Date:</strong></label>
							<input type="date" class="form-control" name="date" id="date" placeholder="Select the Date" required>
						</div>

						<button type="submit" class="btn btn-primary" name="class_vacancy">Get Info</button>

					</form>

			  	</div>

				<div class="tab-pane fade" id="pills-findlec" role="tabpanel" aria-labelledby="pills-findlec-tab">

					<form action="request.php" method="POST">

						<fieldset class="form-group">
    						<div class="row">
    						  	<legend class="col-form-label col-sm-2 pt-0"><strong>Periods:</strong></legend>
    							<div class="col-sm-10">
    								<div class="form-check">
    								  <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="1" checked>
    								  <label class="form-check-label" for="gridRadios1">
    								    08:15 - 09:15
    								  </label>
    								</div>
    								<div class="form-check">
    								  <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="2">
    								  <label class="form-check-label" for="gridRadios2">
    								    09:15 - 10:15
    								  </label>
    								</div>
    								<div class="form-check">
    								  <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="3">
    								  <label class="form-check-label" for="gridRadios3">
    								    10:45 - 11:45
    								  </label>
    								</div>
									<div class="form-check">
    								  <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios4" value="4">
    								  <label class="form-check-label" for="gridRadios4">
    								    11:45 - 12:45
    								  </label>
    								</div>
									<div class="form-check">
    								  <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios5" value="5">
    								  <label class="form-check-label" for="gridRadios5">
    								    13:30 - 14:30
    								  </label>
    								</div>
									<div class="form-check">
    								  <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios6" value="6">
    								  <label class="form-check-label" for="gridRadios6">
    								    14:30 - 15:30
    								  </label>
    								</div>
    							</div>
    						</div>
  						</fieldset>

						<div class="form-group">
							<label for="date"><strong>Date:</strong></label>
							<input type="date" class="form-control" name="date" id="date" placeholder="Select the Date" required>
						</div>

						<div class="form-group">
							<label for="initials"><strong>Faculty Initials:</strong></label>
							<input type="text" class="form-control" name="initials" placeholder="Enter Initials" required>
						</div>

						<button type="submit" class="btn btn-primary" name="find_lecturer">Get Info</button>

					</form>

			  	</div>


			</div>
		</div>

		<footer class="footer fixed-bottom">
		<p><center>
		Copyright &COPY; ISE @JSSATEB. All Rights Reserved
		<br />
		Made with <i class="fa fa-heart" style="color:red"></i> in India
		</center></p>
		</footer>

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
