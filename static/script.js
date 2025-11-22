console.log('Flask app loaded successfully!');

document.addEventListener('DOMContentLoaded', function() {
    const h1 = document.querySelector('h1');
    if (h1) {
        h1.addEventListener('click', function() {
            this.style.color = this.style.color === 'blue' ? '#333' : 'blue';
        });
    }
});