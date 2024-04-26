<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignments</title>
    
    <!-- Placeholder for CSS links -->
    <link rel="stylesheet" href="CSS/assignements.css">
    
    <!-- Google Font Poppins links -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
     <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
     <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200">
  
    <!-- Google Icon links -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
    <div class="hero-image">
        <!-- Back button -->
        <a href="javascript:void(0)" onclick="goBack()" class="back-icon material-icons">
            <span class="material-symbols-outlined">arrow_back</span>
        </a>
    
        <!-- Hero text -->
        <div class="hero-text">
            <span>BMCC Compass</span>
            <h1>Assignements Hub</h1>
        </div>
    
        <!-- Search container -->
        <div class="search-container">
            <form action="">
                <input type="text" name="search" id="search" placeholder="Search here">
                <button type="submit" class="search-icon material-symbols-outlined">search</button>
            </form>
        </div>
    </div>
    
    <div class="dashboard">
    
            <!-- Navigation icons -->
            <section class="navigation"> <!--Navigation Bar-->
                    <img src="assets/Compass.png" alt="Compass Logo" class="logo">
                    <div>
                         <a  href="dashboardFaculty.php"  class="google-icon"><span class="material-symbols-outlined" >dashboard</span></a>
                         <a href="blog.php"  class="google-icon">
                              <span class="material-symbols-outlined">info</span>
                          </a>
                         <a href="facultyassignments.php" class="google-icon">
                              <span class="material-symbols-outlined">checklist</span>
                          </a>
                          <a href="calendar.php" class="google-icon">
                              <span class="material-symbols-outlined">event</span>
                          </a>
                          <a href="messages.php"  class="google-icon">
                              <span class="material-symbols-outlined">mail</span>
                          </a>
                          
                          
                          
                    </div>
    
            <!-- Profile image -->
            <a href = "profile.php"> <img src="assets/profile.jpeg" alt="profile_picture" class="user"> </a>
        </section>
    </div>
</body>
</html>