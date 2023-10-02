<!DOCTYPE html>
<html>
<head>
    <title>Simple Calculator</title>
</head>
<body>
    <input type="text" id="num1">
    <input type="text" id="num2">
    <button onclick="add()">Add</button>
    <button onclick="subtract()">Subtract</button>
    <p id="result"></p>

    <script>
        function add() {
            var num1 = parseFloat(document.getElementById("num1").value);
            var num2 = parseFloat(document.getElementById("num2").value);
            document.getElementById("result").innerHTML = "Result: " + (num1 + num2);
        }

        function subtract() {
            var num1 = parseFloat(document.getElementById("num1").value);
            var num2 = parseFloat(document.getElementById("num2").value);
            document.getElementById("result").innerHTML = "Result: " + (num1 - num2);
        }
    </script>
</body>
</html>
