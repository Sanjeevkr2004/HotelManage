<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'path/to/PHPMailer/src/Exception.php';
require 'path/to/PHPMailer/src/PHPMailer.php';
require 'path/to/PHPMailer/src/SMTP.php';

$mail = new PHPMailer(true);

try {
    // Server settings
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com'; // SMTP server
    $mail->SMTPAuth = true;
    $mail->Username = 'your-email@gmail.com'; // Your email
    $mail->Password = 'your-email-password'; // Your email password
    $mail->SMTPSecure = 'tls'; // Enable TLS encryption
    $mail->Port = 587;

    // Recipients
    $mail->setFrom('your-email@gmail.com', 'Your Name');
    $mail->addAddress('recipient@example.com'); // Add a recipient

    // Content
    $mail->isHTML(true);
    $mail->Subject = 'Feedback Received';
    $mail->Body    = 'This is a feedback message from the form.';

    $mail->send();
    echo 'Feedback has been sent successfully.';
} catch (Exception $e) {
    echo "Failed to send feedback. Mailer Error: {$mail->ErrorInfo}";
}

?>
