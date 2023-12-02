<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Registration</title>
        <link rel="stylesheet" href="assets/css/Registration.css">
    </head>


    <div class="form-wrapper">
        <div class="form-side">

            <form action="..//EmployeServlet"  class="my-form">
                <div class="login-welcome-row ">                    
                    <center><h1>Registration </h1></center>
                </div>             

                <div class="text-field">
                    <label for="email">Enter Your Name:
                        <input type="text" id="fullname" name="name" autocomplete="off" placeholder="Name"
                               required>                        
                    </label>
                </div>            

                <div class="text-field">
                    <label for="dob">Date of birth:
                        <input type="date" id="dob" name="dob" autocomplete="off" placeholder="Date of birth"
                               required >
                       
                    </label>
                </div>
                
                 <div class="text-field">
                    <label for="email">Enter Your Email:
                        <input type="email" id="email" name="email" autocomplete="off" placeholder="Your Email"
                               required>
                        <!-- svg icon -->
                    </label>
                </div>
                
                 <div class="text-field">
                    <label for="password">Password:
                        <input id="password" type="password" name="password" placeholder="Your Password" title="Minimum 6 characters at 
                               least 1 Alphabet and 1 Number"
                               required>
                        <!-- svg icon -->
                    </label>
                </div>
                <div class="text-field">
                    <label for="phon-no">Enter Your Mobile No.
                        <input type="tel" maxlength="10" id="mobile" name="phone" autocomplete="off" placeholder="Phone - no"
                               required>                       
                    </label>
                </div>

                <div class="text-field">
                    <label for="email">Salary
                        <input type="salay" id="salary" name="salary" autocomplete="off" placeholder="Salary"
                               required>                       
                    </label>
                </div>              
               
                <div class="text-field">
                    <label for="email">Employee Position
                        <input type="position" id="position" name="position" autocomplete="off" placeholder="position"
                               required>                       
                    </label>
                </div>  
                <button class="my-form__button" type="submit">
                    Sign up
                </button>
                <div class="my-form__actions">
                    <div class="my-form__row">
                        <span>Did you forget your password?
                        <a href="../index.jsp" title="Login">
                            Back
                        </a>
                        </span>
                    </div>                    
                </div>
            </form>
        </div>
    </div>
