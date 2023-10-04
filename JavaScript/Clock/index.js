setInterval(() => {
    date = new Date();
    hour = date.getHours();
    minute = date.getMinutes();
    second = date.getSeconds();

    hRotation = 30 * hour + minute / 2 + second / 120;
    mRotation = 6 * minute + second / 10;
    sRotation = 6 * second;

    hHand.style.transform = `rotate(${hRotation}deg)`;
    mHand.style.transform = `rotate(${mRotation}deg)`;
    sHand.style.transform = `rotate(${sRotation}deg)`;

}, 1000);


