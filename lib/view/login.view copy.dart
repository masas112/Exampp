// Membuat elemen div untuk menampilkan countdown
var countdownElement = document.createElement("div");
countdownElement.style.fontSize = "24px";
document.body.appendChild(countdownElement);

// Menetapkan waktu awal
var waktuSisa = 30;

function updateCountdown() {
    // Menampilkan waktu sisa dalam format detik
    countdownElement.innerText = "Countdown: " + waktuSisa + " detik";

    // Mengurangi waktu sisa
    waktuSisa--;

    // Menonaktifkan countdown setelah mencapai 0
    if (waktuSisa < 0) {
        clearInterval(countdownInterval);
        countdownElement.innerText = "Waktu habis!";
setTimeout(function() {
        self.window.open('', '_self', ''); 
        self.window.close();       
    }, 5000);
    }
}

// Menjalankan fungsi updateCountdown setiap detik
var countdownInterval = setInterval(updateCountdown, 1000);

// Menjalankan fungsi updateCountdown saat halaman dimuat
window.onload = updateCountdown;

