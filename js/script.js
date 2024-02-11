function createSnowflakes() {
  const snowflakes = document.querySelector('.snowflakes');
  const numberOfSnowflakes = 50; // Change this number to adjust the amount of snowflakes

  for (let i = 0; i < numberOfSnowflakes; i++) {
    const snowflake = document.createElement('div');
    snowflake.classList.add('snowflake');
    snowflake.style.left = Math.random() * window.innerWidth + 'px';
    snowflake.style.animationDuration = (Math.random() * 3 + 2) + 's'; // Adjust speed
    snowflake.style.animationDelay = (Math.random() * 5) + 's'; // Adjust delay
    snowflakes.appendChild(snowflake);
  }
}

createSnowflakes();
