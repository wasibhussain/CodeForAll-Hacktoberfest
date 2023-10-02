<!DOCTYPE html>
<html>
<head>
    <title>PHP Calculator</title>
</head>
<body>
    <h1>PHP Calculator</h1>
    <form method="post" action="">
        <label for="num1">Enter number 1:</label>
        <input type="text" name="num1" id="num1" required>
        <br>
        <label for="num2">Enter number 2:</label>
        <input type="text" name="num2" id="num2" required>
        <br>
        <input type="submit" name="calculate" value="Calculate">
    </form>

    <?php
    if(isset($_POST['calculate'])){
        $num1 = $_POST['num1'];
        $num2 = $_POST['num2'];
        $sum = $num1 + $num2;

        echo "Sum: " . $sum;
    }
    ?>
</body>
</html>
