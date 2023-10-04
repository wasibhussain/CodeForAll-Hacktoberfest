score = 0;
cross = true;
document.onkeydown = function (e) {
    console.log("The code is : ", e.key);
    if (e.key == "Enter") {
        startgame.style.visibility = 'hidden';
        gameover.style.visibility = "hidden";
        score = 0;
        updateScore(score);
        obstacle.classList.add('obstacleMove');

    }
    if (e.key == "ArrowUp") {
        dragon.classList.add('jumpDragon');
        setTimeout(() => {
            dragon.classList.remove('jumpDragon');

        }, 500);
    }
    if (e.key == "ArrowRight") {
        dragonX = parseInt(window.getComputedStyle(dragon, null).getPropertyValue('left'));
        dragon.style.left = dragonX + 100 + "px";
    }
    if (e.key == "ArrowLeft") {
        dragonX = parseInt(window.getComputedStyle(dragon, null).getPropertyValue('left'));
        dragon.style.left = dragonX - 100 + "px";
    }
}

setInterval(() => {

    // dragon = document.querySelector('dragon');
    // obstacle = document.querySelector('#obstacle');

    dx = parseInt(window.getComputedStyle(dragon, null).getPropertyValue('left'));
    dy = parseInt(window.getComputedStyle(dragon, null).getPropertyValue('top'));

    ox = parseInt(window.getComputedStyle(obstacle, null).getPropertyValue('left'));
    oy = parseInt(window.getComputedStyle(obstacle, null).getPropertyValue('top'));
    
    Xoffset = Math.abs(dx - ox);
    Yoffset = Math.abs(dy - oy);
    console.log(Xoffset, Yoffset)
    if (Xoffset < 90 && Yoffset < 60) {
        cross = false;
        gameover.style.visibility = "visible";
        restart.innerHTML = "Your Score : " + score;
        obstacle.classList.remove('obstacleMove');
        obstacle.style.left = ox + 'px';
        obstacle.style.top = oy + 'px';
        // break;
        // if (score >= 1) {
        //     score--;
        //     updateScore(score);
        // }
    }
    else if (Xoffset < 85 && cross) {
        score++;
        updateScore(score);
        cross = false;
        setTimeout(() => {
            cross = true;
        }, 1000);
    }


}, 10);

function updateScore(score) {
    document.getElementById("score").innerHTML = "Your Score: " + score;
}