<?php
  use PHPMailer\PHPMailer\PHPMailer;
  use PHPMailer\PHPMailer\SMTP;
  use PHPMailer\PHPMailer\Exception;
  require './PHPMailer/src/Exception.php';
  require './PHPMailer/src/PHPMailer.php';
  require './PHPMailer/src/SMTP.php';
$servername="localhost";
$dbname="formation_tennis";
$password="";
$username="root";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if($conn === false) {
    die("Connection failed: "
    . mysqli_connect_error());

}
$message=$_POST['message'];
if(!isset($message)) {
    $message="Aucun message";
}
$nom=$_POST['nom'];
$prenoms=$_POST['prenoms'];
$email=$_POST['email'];

$sql= "INSERT INTO inscription(nom, prenoms, email, message) VALUES ('$nom','$prenoms','$email','$message')";

if(mysqli_query($conn, $sql)){
    sendmail($email);
    // // Send email to user using PHPMailer and Google SMTP
  
    // $mail = new PHPMailer(true);
    // $mail->SMTPDebug = 0;
    // $mail->isSMTP();
    // $mail->Host = 'smtp.gmail.com';
    // $mail->SMTPAuth = true;
    // $mail->Username = 'ambroisedas2003@gmail.com';
    // $mail->Password = 'amb256elf';
    // $mail->SMTPSecure = 'tls';
    // $mail->Port = 587;
    // $mail->setFrom('ambroisedas2003@gmail.com', 'Your Name');
    // $mail->addAddress($email, $nom);
    // $mail->isHTML(true);
    // $mail->Subject = 'Thanks for contacting us';
    // $mail->Body = 'Dear ' . $nom . ',<br><br>Thank you for contacting us. We will get back to you as soon as possible.<br><br>Regards,<br>Your Name';
    // $mail->send();

    // if ($mail->send()) {
    //     echo "<script>alert('Vous vous êtes inscrit avec succès.'); window.location.href='index.html';</script>";
    // } else {
    //     echo "<script>alert('Error: " . $mail->ErrorInfo . "'); window.location.href='index.html';</script>";
    // }
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);

?>

<!-- <?php


   // use PHPMailer\PHPMailer\PHPMailer;
    function sendmail($dest){
        $name = "MADES";  // Name of your website or yours
        $to = "tomail@gmail.com";  // mail of reciever
        $subject = "Inscription effectuée";
        $body = "Félicitations vous avez effectué votre  inscription avec succès";
        $from = "elfrieddasilva@gmail.com";  // you mail
        $password = "equfwbpeatpsgfvj";  // your mail password

        // Ignore from here

        // require_once "PHPMailer/PHPMailer.php";
        // require_once "PHPMailer/SMTP.php";
        // require_once "PHPMailer/Exception.php";
        $mail = new PHPMailer();

        // To Here

        //SMTP Settings
        $mail->isSMTP();
        // $mail->SMTPDebug = 3;  Keep It commented this is used for debugging                          
        $mail->Host = "smtp.gmail.com"; // smtp address of your email
        $mail->SMTPAuth = true;
        $mail->Username = $from;
        $mail->Password = $password;
        $mail->Port = 465;  // port
        $mail->SMTPSecure = "tls";  // tls or ssl
        $mail->smtpConnect([
        'ssl' => [
            'verify_peer' => false,
            'verify_peer_name' => false,
            'allow_self_signed' => true
            ]
        ]);

        //Email Settings
        $mail->isHTML(true);
        $mail->setFrom($from, $name);
        $mail->addAddress($dest); // enter email address whom you want to send
        $mail->Subject = ("$subject");
        $mail->Body = $body;
        if ($mail->send()) {
            echo "Email is sent!";
        } else {
            echo "Something is wrong: <br><br>" . $mail->ErrorInfo;
        }
    }


        // sendmail();  // call this function when you want to

       
// ?> -->